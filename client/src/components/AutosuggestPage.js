import { React, useState } from "react";
import Autosuggest from "react-autosuggest";
import theme from "./theme.js";
import { useNavigate } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";

// Teach Autosuggest how to calculate suggestions for any given input value.

// When suggestion is clicked, Autosuggest needs to populate the input
// based on the clicked suggestion. Teach Autosuggest how to calculate the
// input value for every given suggestion.
const getSuggestionValue = (suggestion) => suggestion.id;

// Use your imagination to render suggestions.
const renderSuggestion = (suggestion) => <div>{suggestion.name}</div>;

function AutosuggestPage() {
  const [value, setValue] = useState("");
  const [suggestions, setSuggestions] = useState([]);

  const navigate = useNavigate();

  const { data: countries, isLoading } = useQuery(["country"], () => {
    return Axios.get("/api/countries").then((res) => res.data);
  });

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

  const getSuggestions = (value) => {
    const inputValue = value.trim().toLowerCase();
    const inputLength = inputValue.length;

    return inputLength === 0
      ? []
      : countries.filter(
          (lang) => lang.name.toLowerCase().slice(0, inputLength) === inputValue
        );
  };

  const onChange = (event, { newValue }) => {
    setValue(newValue);
  };

  const onSuggestionSelected = (event, { suggestionValue }) => {
    navigate(`/countries/${suggestionValue}`);
  };

  // Autosuggest will call this function every time you need to update suggestions.
  // You already implemented this logic above, so just use it.
  const onSuggestionsFetchRequested = ({ value }) => {
    setSuggestions(getSuggestions(value));
  };

  // Autosuggest will call this function every time you need to clear suggestions.
  const onSuggestionsClearRequested = () => {
    setSuggestions([]);
  };

  // Autosuggest will pass through all these props to the input.
  const inputProps = {
    placeholder: "Where do you want to go next?",
    value,
    onChange,
  };

  // Finally, render it!
  return (
    <Autosuggest
      theme={theme}
      suggestions={suggestions}
      onSuggestionsFetchRequested={onSuggestionsFetchRequested}
      onSuggestionsClearRequested={onSuggestionsClearRequested}
      getSuggestionValue={getSuggestionValue}
      onSuggestionSelected={onSuggestionSelected}
      renderSuggestion={renderSuggestion}
      inputProps={inputProps}
    />
  );
}

export default AutosuggestPage;
