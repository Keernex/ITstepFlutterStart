import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceSize extends StatefulWidget {
  const ChoiceSize({
    Key? key,
    required this.sizes,
  }) : super(key: key);

  final List<String> sizes;

  @override
  _ChoiceSizeState createState() => _ChoiceSizeState();
}

class _ChoiceSizeState extends State<ChoiceSize> {
  Set<int> selectedIndexes = {}; // Хранит индексы выбранных контейнеров.

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sizes',
          style: GoogleFonts.sora(
              fontSize: 16,
              color: const Color(0xFF2F2D2C),
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            for (int index = 0; index < widget.sizes.length; index++)
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndexes.clear();
                    selectedIndexes.add(index);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: selectedIndexes.contains(index)
                          ? const Color(0xFFC67C4E)
                          : const Color(0xFFEAEAEA),
                    ),
                    color: selectedIndexes.contains(index)
                        ? const Color(0xFFFFF5EE)
                        : Colors.white,
                  ),
                  width: 100,
                  height: 45,
                  alignment: Alignment.center,
                  child: Text(
                    widget.sizes[index],
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      color: selectedIndexes.contains(index)
                          ? const Color(0xFFC67C4E)
                          : const Color(0xFF2F2D2C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
