import 'package:flutter/material.dart';
import 'package:tokokita/bloc/produk_bloc.dart';
import 'package:tokokita/model/produk.dart';
import 'package:tokokita/ui/produk_form.dart';
import 'package:tokokita/ui/produk_page.dart';
import 'package:tokokita/widget/warning_dialog.dart';

class ProdukDetail extends StatefulWidget {
  Produk? produk;

  ProdukDetail({Key? key, this.produk}) : super(key: key);

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kode : ${widget.produk!.kodeProduk}",
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              "Nama : ${widget.produk!.namaProduk}",
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              "Harga : Rp. ${widget.produk!.hargaProduk}",
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20),
            _tombolHapusEdit()
          ],
        ),
      ),
    );
  }

  Widget _tombolHapusEdit() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Tombol Edit
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
          child: const Text("EDIT"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProdukForm(produk: widget.produk!)));
          },
        ),
        const SizedBox(width: 10),
        // Tombol Delete
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          child: const Text("DELETE"),
          onPressed: () => confirmHapus(),
        ),
      ],
    );
  }

  void confirmHapus() {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        content: const Text("Yakin ingin menghapus data ini?"),
        actions: [
          // Tombol Ya: hapus data
          OutlinedButton(
            child: const Text("Ya"),
            onPressed: () async {
              Navigator.pop(dialogContext); // tutup dialog konfirmasi
              try {
                await ProdukBloc.deleteProduk(id: widget.produk!.id);
                if (!mounted) return;
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const ProdukPage()),
                    (route) => false);
              } catch (error) {
                if (!mounted) return;
                showDialog(
                    context: context,
                    builder: (BuildContext context) => const WarningDialog(
                          description: "Hapus data gagal, silahkan coba lagi",
                        ));
              }
            },
          ),
          // Tombol Batal
          OutlinedButton(
            child: const Text("Batal"),
            onPressed: () => Navigator.pop(dialogContext),
          ),
        ],
      ),
    );
  }
}