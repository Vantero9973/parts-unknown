import { React, useCallback, useState } from "react";
import { GoogleMap, useJsApiLoader, Marker } from "@react-google-maps/api";

const containerStyle = {
  width: "65vw",
  height: "88vh",
};

export default function Map({
  lat,
  lng,
  zoom,
  markerLat,
  markerLng,
  markerTwoLat,
  markerTwoLng,
  markerThreeLat,
  markerThreeLng,
  markerFourLat,
  markerFourLng,
  markerFiveLat,
  markerFiveLng,
  markerSixLat,
  markerSixLng,
  markerSevenLat,
  markerSevenLng,
  markerEightLat,
  markerEightLng,
  markerNineLat,
  markerNineLng,
  markerTenLat,
  markerTenLng,
}) {
  const { isLoaded } = useJsApiLoader({
    id: "google-map-script",
    googleMapsApiKey: "AIzaSyB0X5bEYC39FEogQ0gYvs_0Grn0P2iF6Bg",
  });

  const [map, setMap] = useState(null);

  let center = {
    lat: parseInt(lat),
    lng: parseInt(lng),
  };

  // const mapRef = useRef(null);
  // useEffect(() => {
  //   setTimeout(() => mapRef.current?.panTo(nebraska), 3000);
  // }, []);

  // const onLoad = useCallback(function callback(map) {
  //   // This is just an example of getting and using the map instance!!! don't just blindly copy!
  //   const bounds = new window.google.maps.LatLngBounds(center);
  //   map.fitBounds(bounds);

  //   setMap(map);
  // }, []);

  const onUnmount = useCallback(function callback(map) {
    setMap(null);
  }, []);

  return isLoaded ? (
    <>
      <GoogleMap
        mapContainerStyle={containerStyle}
        center={center}
        zoom={zoom}
        // onLoad={onLoad}
        onUnmount={onUnmount}
        // ref={mapRef}
      >
        <Marker
          position={{
            lat: markerLat,
            lng: markerLng,
          }}
        />
        <Marker
          position={{
            lat: markerTwoLat,
            lng: markerTwoLng,
          }}
        />
        <Marker
          position={{
            lat: markerThreeLat,
            lng: markerThreeLng,
          }}
        />
        <Marker
          position={{
            lat: markerFourLat,
            lng: markerFourLng,
          }}
        />
        <Marker
          position={{
            lat: markerFiveLat,
            lng: markerFiveLng,
          }}
        />
        <Marker
          position={{
            lat: markerSixLat,
            lng: markerSixLng,
          }}
        />
        <Marker
          position={{
            lat: markerSevenLat,
            lng: markerSevenLng,
          }}
        />
        <Marker
          position={{
            lat: markerEightLat,
            lng: markerEightLng,
          }}
        />
        <Marker
          position={{
            lat: markerNineLat,
            lng: markerNineLng,
          }}
        />
        <Marker
          position={{
            lat: markerTenLat,
            lng: markerTenLng,
          }}
        />
        {/* Child components, such as markers, info windows, etc. */}
        {/* <Testing /> */}
        <></>
      </GoogleMap>
      {/* <button onClick={() => map.panTo({ lat: 40, lng: -100 })}>Pan</button> */}
    </>
  ) : (
    <></>
  );
}

// function Testing() {
//   const mapuse = useGoogleMap();
//   useEffect(() => {
//     setTimeout(() => mapuse.panTo(nebraska), 3000);
//   }, []);
//   return <></>;
// }
