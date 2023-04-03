function formatDecimals(value, place){
    return (Math.round(value * 100) / 100).toFixed(place);
}

function parsePriceLabel(text){
    return parseFloat(text.replace(/[^0-9.-]+/g,""));
}

function checkName(element){
    var name = $(element).val();
    if (name.trim() === '') {
        return false;
    }
    const invalidCharactersRegex = /[^a-zA-Z\s-']/;
    if (invalidCharactersRegex.test(name)) {
        return false;
    }
    return true;
}

function checkEmailAddress(element){
    var emailAddress = $(element).val();
    var result = false;
    if (/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(emailAddress)){
        result = true;
    }
    return result
}

function checkTelephoneNumber(element){
    var telephoneNumber = $(element).val();
    var result = false;
    const phoneRegex = /^(011|012|013|014|015|016|017|018|019)\d{7,8}$/
    const strippedPhoneNumber = telephoneNumber.replace(/\D/g, '');
    if (phoneRegex.test(strippedPhoneNumber)){
        result = true;
    }
    return result
}

function checkDateOfBirth(element){
    var dateOfBirth = $(element).val();
    var dateObject = new Date(dateOfBirth);

    if (isNaN(dateObject.getTime()) || dateObject.getFullYear() < 1900 || dateObject.getFullYear() > new Date().getFullYear()) {
        return false;
    }

    const today = new Date();
    return dateObject <= today;
}

function checkCardNumber(element){
    var cardNumber = $(element).val();
    cardNumber = cardNumber.replace(/\D/g,'');
    var digits = cardNumber.split('').map(Number);
    for (var i = digits.length - 2; i >= 0; i -= 2) {
        digits[i] *= 2;
        if (digits[i] > 9) {
            digits[i] -= 9;
        }
    }
    var sum = digits.reduce(function(acc, val) { return acc + val; }, 0);
    return sum % 10 == 0;
}

function checkCardExpiryDate(element){
    var cardDate = element.val();
    var parts = cardDate.split('/');
    var month = parseInt(parts[0], 10);
    var year = parseInt(parts[1], 10) + 2000; // Add 2000 to get the full year
    var expiryDate = new Date(year, month, 0);
    var currentDate = new Date();
    if (expiryDate < currentDate) {
        return false;
    } else {
        return true;
    }
}

function checkCardCVV(element){
    var cvv = element.val();
    cvv = cvv.replace(/\D/g, '');
    if (/^\d{3,4}$/.test(cvv)) {
        return true;
    } else {
        return false;
    }
}