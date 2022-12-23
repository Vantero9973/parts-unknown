import { React, useCallback, useState, useEffect, useRef } from "react";
import {
  useGoogleMap,
  GoogleMap,
  useJsApiLoader,
} from "@react-google-maps/api";

const containerStyle = {
  width: "65vw",
  height: "88vh",
};

export default function Map({ lat, lng, zoom }) {
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
