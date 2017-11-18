package com.aferdita.random

import java.util.*

/**
 * Created by aferditamuriqi on 11/17/17.
 */


public val Array<*>.randomObject: Any?
    get() {
        if ((this.size > 0)) {
            val random = Random().nextInt(this.size)
            return this[random]
        } else {
            return null
        }
    }


