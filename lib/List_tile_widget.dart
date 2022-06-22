import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final Function()? onTap;
  final String assetName;
  final String countryName;

  const ListTileWidget({
    Key? key,
    required this.countryName,
    required this.assetName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Material(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 200,
            top: 2.5,
            bottom: 2.5,
          ),
          child: ListTile(
            onTap: onTap,
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage(
                    assetName,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            trailing: Text(
              countryName,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
