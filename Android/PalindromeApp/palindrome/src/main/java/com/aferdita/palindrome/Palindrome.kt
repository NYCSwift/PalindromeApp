package com.aferdita.palindrome

/**
 * Created by aferditamuriqi on 11/17/17.
 */

fun isPalindrome(testString:String): Pair<Boolean, String> {

    val myAlphaNumericString = testString.replace("[^A-Za-z0-9]".toRegex(), "").toLowerCase()

    var left = 0
    var right = myAlphaNumericString.length - 1

    while (left < right)
    {
        if (myAlphaNumericString[left] != myAlphaNumericString[right])
        {
            return Pair(false , myAlphaNumericString)
        }

        left += 1
        right -= 1
    }
    return Pair(true , myAlphaNumericString)
}
