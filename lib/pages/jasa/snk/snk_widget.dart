import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'snk_model.dart';
export 'snk_model.dart';

class SnkWidget extends StatefulWidget {
  const SnkWidget({
    super.key,
    this.foto,
    this.nama,
    this.alamat,
    this.notlp,
  });

  final String? foto;
  final String? nama;
  final String? alamat;
  final String? notlp;

  @override
  State<SnkWidget> createState() => _SnkWidgetState();
}

class _SnkWidgetState extends State<SnkWidget> {
  late SnkModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SnkModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          elevation: 8.0,
          label: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await launchUrl(Uri(
                      scheme: 'tel',
                      path: 'https://wa.me/+6287874094964',
                    ));
                  },
                  child: Icon(
                    Icons.call,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (isiOS) {
                      await launchUrl(Uri.parse(
                          "sms:${'https://wa.me/+6287874094964'}&body=${Uri.encodeComponent('Halo, Saya ${loggedIn.toString()} apakah barang yang dijual ready?')}"));
                    } else {
                      await launchUrl(Uri(
                        scheme: 'sms',
                        path: 'https://wa.me/+6287874094964',
                        queryParameters: <String, String>{
                          'body':
                              'Halo, Saya ${loggedIn.toString()} apakah barang yang dijual ready?',
                        },
                      ));
                    }
                  },
                  child: Icon(
                    Icons.chat,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Text(
              'Jasa',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 25.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                          ),
                        ),
                        child: Text(
                          ' Selamat datang di aplikasi mobile ACPM Apps (selanjutnya disebut \"Aplikasi\") yang dikelola oleh PT.ACPM (selanjutnya disebut \"Perusahaan\"). Dengan menggunakan Aplikasi ini, Anda setuju untuk terikat dengan syarat dan ketentuan ini. Jika Anda tidak setuju dengan syarat dan ketentuan ini, harap segera berhenti menggunakan Aplikasi.\n\n1. Penggunaan Aplikasi\n\nAnda setuju untuk menggunakan Aplikasi ini hanya untuk tujuan yang sah, sesuai dengan aturan yang berlaku, dan dengan tidak melanggar hak pihak ketiga.\n\n2. Privasi dan Data Pengguna\n\nKami menghormati privasi Anda. Data pengguna yang dikumpulkan dan digunakan oleh Aplikasi diatur oleh Kebijakan Privasi yang terpisah dan tersedia di Aplikasi.\n\n3. Hak Kekayaan Intelektual\n\nAplikasi ini dan semua kontennya, termasuk tetapi tidak terbatas pada teks, gambar, suara, video, dan perangkat lunak, dilindungi oleh hak cipta dan hak kekayaan intelektual lainnya yang dimiliki oleh Perusahaan. Anda tidak diizinkan untuk mereproduksi, mendistribusikan, atau menggandakan konten Aplikasi tanpa izin tertulis dari Perusahaan.\n\n4. Pembatasan Tanggung Jawab\n\nAplikasi ini disediakan \"apa adanya\" dan \"sebagaimana tersedia.\" Perusahaan tidak bertanggung jawab atas kerugian, cedera, atau kerusakan yang mungkin timbul dari penggunaan Aplikasi.\n\n5. Perubahan Syarat dan Ketentuan\n\nPerusahaan berhak untuk mengubah syarat dan ketentuan ini setiap saat. Perubahan tersebut akan diumumkan di Aplikasi dan berlaku segera setelah diumumkan. Anda dianggap menerima perubahan tersebut dengan melanjutkan penggunaan Aplikasi.\n\n6. Penutupan Akun\n\nPerusahaan berhak menutup akun pengguna dan menghentikan akses ke Aplikasi jika ditemukan pelanggaran terhadap syarat dan ketentuan ini atau aturan yang berlaku.\n\n7. Hukum yang Berlaku\n\nSyarat dan ketentuan ini diatur oleh hukum yang berlaku di Indonesia dan setiap sengketa yang timbul akan diselesaikan dalam yurisdiksi yang relevan.\n\nTerima kasih telah menggunakan Aplikasi kami. Jika Anda memiliki pertanyaan atau masalah terkait dengan syarat dan ketentuan ini, silakan hubungi kami di acpm@support.com.\n\n01 Desember 2023',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
