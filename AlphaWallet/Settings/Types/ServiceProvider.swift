// Copyright SIX DAY LLC. All rights reserved.

import Foundation
import UIKit

enum URLServiceProvider {
    case telegramsocial
    case telegramann
    case twitter
    case linkedin
    case discord

    var title: String {
        switch self {
        case .telegramsocial: return "Telegram Social"
        case .telegramann: return "Telegram ANN"
        case .twitter: return "Twitter"
        case .linkedin: return "LinkedIn"
        case .discord: return "Discord"
        }
    }

    //TODO should probably change or remove `localURL` since iOS supports deep links now
    var localURL: URL? {
        switch self {
        case .telegramsocial:
            return URL(string: "https://t.me/SWYFTCHAT")!
        case .telegramann:
            return URL(string: "https://t.me/SWYFTLTD")!
        case .twitter:
            return URL(string: "twitter://user?screen_name=\(Constants.twitterUsername)")!
        case .linkedin:
            return URL(string: "https://www.linkedin.com/company/swyft-network/")
        case .discord:
            return URL(string: "https://discord.gg/t4rWn8R")
        }
    }

    var remoteURL: URL {
        return URL(string: remoteURLString)!
    }

    private var remoteURLString: String {
        switch self {
        case .telegramsocial:
            return "https://t.me/SWYFTCHAT"
        case .telegramann:
            return "https://t.me/SWYFTLTD"
        case .twitter:
            return "https://twitter.com/\(Constants.twitterUsername)"
        case .linkedin:
            return "https://www.linkedin.com/company/swyft-network/"
        case .discord:
            return "https://discord.gg/t4rWn8R"
        }
    }

    var image: UIImage? {
        switch self {
        case .telegramsocial: return R.image.settings_telegram()
        case .telegramann: return R.image.settings_telegram()
        case .twitter: return R.image.settings_twitter()
        case .linkedin: return R.image.settings_reddit()
        case .discord: return R.image.settings_facebook()
        }
    }
}
