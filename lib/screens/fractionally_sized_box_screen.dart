import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/fractionally_sized_box_viewmodel.dart';

class FractionallySizedBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<FractionallySizedBoxViewModel>(),
      child: Consumer<FractionallySizedBoxViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("FractionallySizedBox with MVVM"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.grey[300],
                    width: 200,
                    height: 200,
                    child: FractionallySizedBox(
                      widthFactor: viewModel.widthFactor,
                      heightFactor: viewModel.heightFactor,
                      child: Container(
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            "FractionallySizedBox",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Width Factor: ${viewModel.widthFactor.toStringAsFixed(1)}"),
                  Slider(
                    value: viewModel.widthFactor,
                    min: 0.1,
                    max: 1.0,
                    onChanged: viewModel.updateWidthFactor,
                  ),
                  Text("Height Factor: ${viewModel.heightFactor.toStringAsFixed(1)}"),
                  Slider(
                    value: viewModel.heightFactor,
                    min: 0.1,
                    max: 1.0,
                    onChanged: viewModel.updateHeightFactor,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
