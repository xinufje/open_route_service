import 'package:open_route_service/open_route_service.dart';
import 'package:test/test.dart';

void poisTests({
  required OpenRouteService service,
  required Coordinate boundingBoxStart,
  required Coordinate boundingBoxEnd,
}) {
  test(
    'Get POIs Data using geometry using [getPOIsData]',
    () async {
      final PoisData poisData = await service.getPOIsData(
        request: 'pois',
        geometry: {
          "bbox": <List<double>>[
            boundingBoxStart.toList(),
            boundingBoxEnd.toList(),
          ],
          "geojson": {
            "type": "Point",
            "coordinates": boundingBoxStart.toList(),
          },
          "buffer": 200
        },
      );
      expect(poisData.features.length, greaterThan(0));
    },
  );
}
