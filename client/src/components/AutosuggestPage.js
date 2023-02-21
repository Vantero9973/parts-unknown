import { React, useState } from "react";
import Autosuggest from "react-autosuggest";
import theme from "./theme.js";
import { useNavigate } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";

const getSuggestionValue = (suggestion) => suggestion.id;

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

  const onSuggestionsFetchRequested = ({ value }) => {
    setSuggestions(getSuggestions(value));
  };

  const onSuggestionsClearRequested = () => {
    setSuggestions([]);
  };

  const inputProps = {
    placeholder: "Where do you want to go next?",
    value,
    onChange,
  };

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
