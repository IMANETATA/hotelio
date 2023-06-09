import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';


class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              //centerSpaceRadius:70 ,
              startDegreeOffset:-90 ,
              sections: pieChartSelectionDatas
            )
          ),
    Positioned.fill(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height:dPadding ,),
          Text("hotelio",style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            height: 0.5
          ),
            
          ),
         // const Text("of 128 GB")
        ],))
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionDatas= [
                              PieChartSectionData(
                                color: backgroundColor2,
                                value: 25,
                                showTitle: false,
                                radius: 25
                                ),
                                PieChartSectionData(
                                color: kPrimaryColor,
                                value: 20,
                                showTitle: false,
                                radius: 25
                                ),
                                PieChartSectionData(
                                color: kPrimaryLightColor,
                                value: 10,
                                showTitle: false,
                                radius: 25
                                ),
                                PieChartSectionData(
                                color: secondaryColor,
                                value: 15,
                                showTitle: false,
                                radius: 25
                                ),
                            ];