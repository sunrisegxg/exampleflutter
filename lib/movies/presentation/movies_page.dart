import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/movies/presentation/widgets/app_bar_movie.dart';
import '/movies/presentation/widgets/movies_list_widget.dart';

///Movies page
class MoviesPage extends ConsumerStatefulWidget {
  ///Constructor
  const MoviesPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends ConsumerState<MoviesPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Movies'),
        leading: Container(
          margin: const EdgeInsets.only(
            left: 12,
            top: 14,
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios, size: 18),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: const [
                MoviesListWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
