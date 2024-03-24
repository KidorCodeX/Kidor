import 'package:my_first_app/widgets/dotted_lines.dart';
import 'package:flutter/material.dart';

class ResultsCard extends StatelessWidget {
  const ResultsCard({
    super.key,
    required this.roundedPercentageScore,
    required this.bgColor3,
  });

  final int roundedPercentageScore;
  final Color bgColor3;

  @override
  Widget build(BuildContext context) {
    const Color bgColor3 = Color.fromARGB(255, 255, 255, 255);
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.888,
      height: MediaQuery.of(context).size.height * 0.568,
      child: Stack(
        children: [
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            // for (var ii = 0;
                            //     ii < "Congratulations!,".length;
                            //     ii++) ...[
                            //   TextSpan(
                            //     text: "Congratulations!,"[ii],
                            //     style: Theme.of(context)
                            //         .textTheme
                            //         .bodyMedium!
                            //         .copyWith(fontSize: 12 + ii.toDouble()),
                            //   ),
                            // ],

                            TextSpan(
                              text: " Congratulations!\n You Scored  \n",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "$roundedPercentageScore%",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 30,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),