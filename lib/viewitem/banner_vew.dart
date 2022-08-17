import 'package:booking_app/resource/dimens.dart';
import 'package:booking_app/widget/gradient_view.dart';
import 'package:flutter/material.dart';

class BannerView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.only(
          left: MARGIN_LARGE,
          right: MARGIN_LARGE),
        child: Container(
          child: Stack (
            children: [
              BannerImageView(),
              GradientView(),
              BannerTextTitleView(),
              BannerIconView(),
            ],
          ),
       ),
    );
  }
}

class BannerIconView extends StatelessWidget {
  const BannerIconView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: MARGIN_MEDIUM,
          bottom: MARGIN_CARD_MALL),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Image.asset("assets/images/UPI_Credit-Card.jpg"),
      ),
    );
  }
}

class BannerTextTitleView extends StatelessWidget {
  const BannerTextTitleView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: MARGIN_MEDIUM,
          top: MARGIN_SMALL),
      child: Align(
        alignment: Alignment.topLeft,
        child: Image.asset("assets/images/textkbz.jpg"),
      ),
    );
  }
}

class BannerImageView extends StatelessWidget {
  const BannerImageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned.fill(
          child: Image.asset("assets/images/kfc_censor.jpg",
              fit: BoxFit.cover),
      ),
    );
  }
}
