class BuildServer {
  static Uri buildCityUrl() {
    const String host = "https://countriesnow.space/api/v0.1/countries";

    return Uri.parse(host);
  }
}
