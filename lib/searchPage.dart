import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FloatingSearchBar(
        backdropColor: Colors.transparent,
        automaticallyImplyBackButton: false,
        hint: 'البحث...',
        hintStyle: const TextStyle(),
        scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
        transitionDuration: const Duration(milliseconds: 800),
        transitionCurve: Curves.easeInOut,
        physics: const BouncingScrollPhysics(),
        axisAlignment: 0,
        openAxisAlignment: 0.0,
        width: MediaQuery.of(context).size.width * 0.90,
        debounceDelay: const Duration(milliseconds: 500),
        onQueryChanged: (query) {
          //search
        },
        transition: CircularFloatingSearchBarTransition(),
        actions: [
          FloatingSearchBarAction.searchToClear(
            showIfClosed: false,
          ),
        ],
        builder: (context, transition) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.89,
              child: ListView.separated(
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: InkWell(
                        onTap: () {},
                        child: SizedBox(
                            height: MediaQuery.of(context).size.width * 0.2,
                            child: Material(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              elevation: 4.0,
                              child: const Text(
                                "data",
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    );
                  }),
                  separatorBuilder: ((context, index) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    );
                  }),
                  itemCount: 20));
        },
      ),
    );
  }
}
