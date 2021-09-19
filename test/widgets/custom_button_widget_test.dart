import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:micro_commons_design_system/micro_commons_design_system.dart';

void main() {
  testGoldens('CustomButtonWidget - Multiple Scenarios',
      (WidgetTester tester) async {
    final builder = GoldenBuilder.grid(columns: 3, widthToHeightRatio: 1)
      ..addScenario(
        'Default',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
        ),
      )
      ..addScenario(
        'Outlier',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
          outline: true,
        ),
      )
      ..addScenario(
        'noBorder',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
          noBorder: true,
        ),
      )
      ..addScenario(
        'Disabled',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
          enabled: false,
        ),
      )
      ..addScenario(
        'Padding',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
          padding: const EdgeInsets.all(20),
        ),
      )
      ..addScenario(
        'TextSize',
        CustomButtonWidget(
          text: 'CustomButton',
          onPressed: () {},
          textSize: 16,
        ),
      );

    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(500, 300),
    );

    await screenMatchesGolden(tester, 'custom_button_multiples_states');
  });
}
