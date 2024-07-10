import 'package:flutter/material.dart';
import 'package:hyper/colors/hpercolor.dart';

Widget hyperSearchAndFilter(
  BuildContext context,
  VoidCallback onSearch,
) {
  final TextEditingController searchController = TextEditingController();

  InputDecoration getInputDecoration() {
    return InputDecoration(
      fillColor: Colors.white10,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: HyperColor.profileBackgroundColor.withOpacity(0.5),
          width: 0.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: HyperColor.disableBtnColor,
          width: 0.5,
        ),
      ),
      hintText: '검색어를 입력하세요',
      hintStyle: const TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
      suffixIcon: IconButton(
        icon: const Icon(Icons.search, color: HyperColor.thinBlack),
        onPressed: () {
          searchController.clear();
          onSearch();
        },
      ),
    );
  }

  return Container(
    margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
    child: Row(
      children: [
        Expanded(
          child: SizedBox(
            child: TextField(
              controller: searchController,
              cursorColor: HyperColor.gardientOne,
              decoration: getInputDecoration(),
            ),
          ),
        ),
      ],
    ),
  );
}
