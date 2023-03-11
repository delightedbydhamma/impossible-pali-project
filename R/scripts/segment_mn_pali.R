# Script to segment the MN pali text data.

# Load libraries. ----

library(dplyr)
library(purrr)
library(stringr)
library(vroom)
library(tidytext)


# Load data. ----

pali_mn_data <- vroom("https://raw.githubusercontent.com/chaz23/sutta-science/main/data/pali-texts/dataset_1/pli_mn_sutta_data.tsv")


# Segment text. ----

pli_stop_words <- c("bhikkave", "bho", "avuso", '"ti')

pali_mn_data %>% 
  
  # Extract sutta and segment numbers.
  mutate(sutta = str_extract(segment_id, "^.*(?=:)"),
         segment = str_extract(segment_id, "(?<=:).*$")) %>% 
  
  # Remove headers.
  filter(!str_detect(segment, "^0.*")) %>% 
  
  # Chunk sutta text together.
  group_by(sutta) %>% 
  nest() %>% 
  mutate(text = map_chr(data, ~ {
    .x %>% 
      pull(segment_text) %>% 
      paste0(sep = " ", collapse = "")
  })) %>% 
  select(-data) %>% 
  ungroup() %>% 
  
  # Replace comma-space-single word-comma with blank.
  # mutate(str_replace_all(text, ", [A-Z][a-z]+,", "")) %>% 
  
  # Split into phrases.
  unnest_tokens(phrase, text, token = "regex", pattern = "([,.—?;:]|ti)") %>% 
  
  # Trim whitespace.
  mutate(phrase = str_trim(phrase)) %>% 
  
  # Remove phrases with single words.
  filter(str_detect(phrase, " ")) %>% 
  
  # Remove phrases with " ... " or "...pe...".
  filter(!str_detect(phrase, "(\U2026pe|\U2026)")) %>% 
  
  # Remove quotes.
  mutate(phrase = str_replace_all(phrase, "(\"|“|”|‘|’)", "")) %>% 
  
  count(phrase, sort = TRUE)

