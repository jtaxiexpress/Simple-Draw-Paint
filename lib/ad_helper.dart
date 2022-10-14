import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  static String? get launchAdId {
    if (Platform.isAndroid) {
      return "ca-app-pub-8319377204356997/2243802885";
    } else if (Platform.isIOS) {
      return "ca-app-pub-8319377204356997/1094372746";
    }

    return null;
  }

  static String? get rewardAd {
    if (Platform.isAndroid) {
      return "ca-app-pub-8319377204356997/1285944437";
    } else if (Platform.isIOS) {
      return "ca-app-pub-8319377204356997/9902801055";
    }

    return null;
  }

  static AppOpenAd? openAd;

  static loadAppLaunchAd() async => launchAdId != null
      ? await AppOpenAd.load(
          adUnitId: launchAdId!,
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

  static Future<void> loadRewardedAd() async =>
      rewardAd != null && rewardedAd == null
          ? await RewardedAd.load(
              adUnitId: rewardAd!,
              request: const AdRequest(),
              rewardedAdLoadCallback: RewardedAdLoadCallback(
                onAdLoaded: (ad) {
                  log("Ad loaded");
                  rewardedAd = ad;
                },
                onAdFailedToLoad: (err) {
                  throw ("Failed to load ad, $err");
                },
              ),
            )
          : null;

  static showRewardedAd(VoidCallback onUserEarned) {
    if (rewardedAd != null) {
      rewardedAd!.fullScreenContentCallback =
          FullScreenContentCallback(onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        loadRewardedAd();
      }, onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        loadRewardedAd();
      });
      rewardedAd!.show(onUserEarnedReward: (_, __) => onUserEarned());
      rewardedAd == null;
    }
    throw "Failed to load Reward ad";
  }
}
