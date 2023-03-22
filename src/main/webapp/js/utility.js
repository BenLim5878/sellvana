function formatDecimals(value, place){
    return (Math.round(value * 100) / 100).toFixed(place);
}

function parsePriceLabel(text){
    return parseFloat(text.replace(/[^0-9.-]+/g,""));
}