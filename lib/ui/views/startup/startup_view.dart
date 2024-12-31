import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: Center(
        child: Stack(alignment: AlignmentDirectional.topCenter, children: [
          Column(
            children: [
              const Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 0,
                  )),
              SvgPicture.asset('assets/images/logo.svg'),
              const Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 0,
                  )),
              const SizedBox.square(
                dimension: 30,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              ),
              const Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 0,
                  )),
            ],
          ),
          SvgPicture.asset('assets/images/splash_element.svg')
        ]),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
