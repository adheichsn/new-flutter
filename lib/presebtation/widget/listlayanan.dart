import 'package:flutter/material.dart';
import 'package:posyandhu/presebtation/widget/theme.dart';

class Listlayanan extends StatelessWidget {
  const Listlayanan({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: layananSurat.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InputLayanansurat(
                selectedSurat: layananSurat[index], // Kirim data yang dipilih
              ),
            ),
          );
        },
        child: Card(
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Image.asset('assets/images/latter.png'),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pelayanan Surat',
                        style: regularwhitetext.copyWith(fontSize: 12)),
                    Text(
                      layananSurat[index].name,
                      style: mediumWhiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
