import nimcrypto
## nimcrypto is required
proc getAuthSig(paramaters=""): string =
    ## Generates an authorisation signature string for interfacing with the API
    ## Takes URL filter paramaters
    var stringToHmac = paramaters
    var stringHmacKey = ""

    return encode(parseHexStr($sha256.hmac(stringHmacKey, stringToHmac)))