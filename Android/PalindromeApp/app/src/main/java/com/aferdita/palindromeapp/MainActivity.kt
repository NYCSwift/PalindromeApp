package com.aferdita.palindromeapp

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import com.aferdita.palindrome.isPalindrome
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        button.setOnClickListener {
            val palindrome = isPalindrome(wordField.text.toString())
            if (palindrome.first) {
                resultLabel.text = "yes, ${palindrome.second} is a palindrome"
                resultImageView.setImageResource(R.drawable.yes)
            }
            else  {
                resultLabel.text = "no, ${palindrome.second} is not a palindrome"
                resultImageView.setImageResource(R.drawable.no)
            }
        }

    }
}
