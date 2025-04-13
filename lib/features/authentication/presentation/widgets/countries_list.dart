import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_bounce.dart';
import 'package:wisp_wiz/core/common/widgets/tex-fields/app_text_field.dart';
import 'package:wisp_wiz/core/constants/countires_data.dart';
import 'package:wisp_wiz/features/authentication/presentation/data/models/country_model.dart';
import 'package:wisp_wiz/features/authentication/presentation/widgets/country_card.dart';

class CountriesList extends StatefulWidget {
  const CountriesList({super.key});

  @override
  State<CountriesList> createState() => _CountriesListState();
}

class _CountriesListState extends State<CountriesList>
    with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  List<CountryModel> _countries = [];
  List<CountryModel> _filteredCountries = [];

  @override
  void initState() {
    super.initState();

    _loadCountries();

    _searchController.addListener(_onSearchChanged);
  }

  void _loadCountries() {
    _countries =
        countriesData.map((data) => CountryModel.fromJson(data)).toList();
    _filteredCountries = List.from(_countries);
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredCountries = List.from(_countries);
      } else {
        _filteredCountries =
            _countries.where((country) {
              return country.name.toLowerCase().contains(query) ||
                  country.code.contains(query);
            }).toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          hintText: "Search Country",
          prefixIcon: HugeIcons.strokeRoundedSearch01,
          controller: _searchController,
        ).animate().fadeIn(duration: 1000.ms, curve: Curves.fastOutSlowIn),
        const SizedBox(height: 12),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: ListView.builder(
            key: ValueKey<int>(_filteredCountries.length),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _filteredCountries.length,
            itemBuilder: (context, index) {
              return AppBounce(
                onPressed: () {},
                child: CountryCard(
                      animation: const AlwaysStoppedAnimation(1),
                      country: _filteredCountries[index],
                    )
                    .animate(delay: (index * 80).ms)
                    .fadeIn(duration: 500.ms, curve: Curves.fastOutSlowIn)
                    .slideX(
                      begin: 0.1,
                      end: 0,
                      duration: 500.ms,
                      curve: Curves.fastOutSlowIn,
                    ),
              );
            },
          ),
        ),
      ],
    );
  }
}
