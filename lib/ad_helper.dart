import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  static String? launchAdId() {
    if (Platform.isAndroid) {
      return "ca-app-pub-8319377204356997/2243802885";
    } else if (Platform.isIOS) {
      return "ca-app-pub-8319377204356997/1094372746";
    }

    return null;
  }

  static String? rewardAd() {
    if (Platform.isAndroid) {
      return "ca-app-pub-8319377204356997/1285944437";
    } else if (Platform.isIOS) {
      return "ca-app-pub-8319377204356997/9902801055";
    }

    return null;
  }

  static AppOpenAd? openAd;

  static loadAppLaunchAd() async => launchAdId() != null
      ? await AppOpenAd.load(
          adUnitId: launchAdId()!,
          request: const AdRequest(),
          adLoadCallback: AppOpenAdLoadCallback(
            onAdLoaded: (ad) {
              log("Ad loaded");
              openAd = ad..show();
            },
            onAdFailedToLoad: (err) {
              log("Failed to load ad, $err");
            },
          ),
          orientation: AppOpenAd.orientationPortrait,
        )
      : null;
  static RewardedAd? rewardedAd;

  static loadRewardedAd(VoidCallback onUserEarned) async => rewardAd() != null
      ? await RewardedAd.load(
          adUnitId: rewardAd()!,
          request: const AdRequest(),
          rewardedAdLoadCallback: RewardedAdLoadCallback(
            onAdLoaded: (ad) {
              log("Ad loaded");
              rewardedAd = ad
                ..show(
                  onUserEarnedReward: (ad, rewardItem) {
                    onUserEarned();
                  },
                );
            },
            onAdFailedToLoad: (err) {
              log("Failed to load ad, $err");
            },
          ),
        )
      : null;
}
