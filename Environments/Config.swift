//
//  Config.swift
//  Environments
//
//  Created by Dan Ionescu on 23/05/16.
//  Copyright © 2016 Alt Tab. All rights reserved.
//

import UIKit

func env<T>(dev development: T, stg staging: T, prod production:T) -> T {
    var v: T!

    #if ENVIRONMENT_DEVELOPMENT
        v = development
    #elseif ENVIRONMENT_STAGING
        v = staging
    #else // Live
        v = production
    #endif

    return v
}


struct Config {
    static let BaseURL = env(dev: "http://dev.site.com/",
                             stg: "http://stg.site.com/",
                             prod: "http://www.site.com/")

    static let PageSize = env(dev: 20,
                              stg: 10,
                              prod: 10)

    struct Theme {
        static let PrimaryColor = env(dev: UIColor.redColor(),
                                      stg: UIColor.redColor(),
                                      prod: UIColor.greenColor())

    }

}
