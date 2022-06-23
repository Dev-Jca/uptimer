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
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 2.2, bottom: 2.2, right: 30),
                child: Container(
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.2, bottom: 2.2),
                child: Text(
                  countryName,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
