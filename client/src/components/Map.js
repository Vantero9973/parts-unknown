import { React, useCallback, useEffect, useState } from "react";
import {
  GoogleMap,
  useJsApiLoader,
  Marker,
  InfoWindow,
} from "@react-google-maps/api";

const containerStyle = {
  width: "65vw",
  height: "88vh",
};

export default function Map({
  lat,
  lng,
  zoom,
  markerName,
  markerImage,
  markerTwoName,
  markerTwoImage,
  markerThreeName,
  markerThreeImage,
  markerFourName,
  markerFourImage,
  markerFiveName,
  markerFiveImage,
  markerSixName,
  markerSixImage,
  markerSevenName,
  markerSevenImage,
  markerEightName,
  markerEightImage,
  markerNineName,
  markerNineImage,
  markerTenName,
  markerTenImage,
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

  const onUnmount = useCallback(function callback(map) {
    setMap(null);
  }, []);

  const [selectedCenter, setSelectedCenter] = useState(null);
  const [selectedCenterTwo, setSelectedCenterTwo] = useState(null);
  const [selectedCenterThree, setSelectedCenterThree] = useState(null);
  const [selectedCenterFour, setSelectedCenterFour] = useState(null);
  const [selectedCenterFive, setSelectedCenterFive] = useState(null);
  const [selectedCenterSix, setSelectedCenterSix] = useState(null);
  const [selectedCenterSeven, setSelectedCenterSeven] = useState(null);
  const [selectedCenterEight, setSelectedCenterEight] = useState(null);
  const [selectedCenterNine, setSelectedCenterNine] = useState(null);
  const [selectedCenterTen, setSelectedCenterTen] = useState(null);

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
          label="1"
          animation={2}
          onClick={() => {
            setSelectedCenter({ lat: markerLat, lng: markerLng });
          }}
        >
          {selectedCenter && (
            <InfoWindow
              onCloseClick={() => {
                setSelectedCenter(null);
              }}
              position={{
                lat: selectedCenter.latitude,
                lng: selectedCenter.longitude,
              }}
            >
              <div className="mapDiv">
                <img src={markerImage} alt="" className="mapImg" />
                <h1 className="mapH">{markerName}</h1>
              </div>
            </InfoWindow>
          )}
        </Marker>
        <Marker
          position={{
            lat: markerTwoLat,
            lng: markerTwoLng,
          }}
          label="2"
          animation={2}
          onClick={() => {
            setSelectedCenterTwo({ lat: markerTwoLat, lng: markerTwoLng });
          }}
        >
          {selectedCenterTwo && (
            <InfoWindow
              onCloseClick={() => {
                setSelectedCenterTwo(null);
              }}
              position={{
                lat: selectedCenterTwo.latitude,
                lng: selectedCenterTwo.longitude,
              }}
            >
              <div className="mapDiv">
                <img src={markerTwoImage} alt="" className="mapImg" />
                <h1 className="mapH">{markerTwoName}</h1>
              </div>
            </InfoWindow>
          )}
        </Marker>
        <Marker
          position={{
            lat: markerThreeLat,
            lng: markerThreeLng,
          }}
          label="3"
          animation={2}
          onClick={() => {
            setSelectedCenterThree({
              lat: markerThreeLat,
              lng: markerThreeLng,
            });
          }}
        >
          {selectedCenterThree && (
            <InfoWindow
              onCloseClick={() => {
                setSelectedCenterThree(null);
              }}
              position={{
                lat: selectedCenterThree.latitude,
                lng: selectedCenterThree.longitude,
              }}
            >
              <div className="mapDiv">
                <img src={markerThreeImage} alt="" className="mapImg" />
                <h1 className="mapH">{markerThreeName}</h1>
              </div>
            </InfoWindow>
          )}
        </Marker>
        <Marker
          position={{
            lat: markerFourLat,
            lng: markerFourLng,
          }}
          label="4"
          animation={2}
          onClick={() => {
            setSelectedCenterFour({ lat: markerFourLat, lng: markerFourLng });
          }}
        >
          {selectedCenterFour && (
            <InfoWindow
              onCloseClick={() => {
                setSelectedCenterFour(null);
              }}
              position={{
                lat: selectedCenterFour.latitude,
                lng: selectedCenterFour.longitude,
              }}
            >
              <div className="mapDiv">
                <img src={markerFourImage} alt="" className="mapImg" />
                <h1 className="mapH">{markerFourName}</h1>
              </div>
            </InfoWindow>
          )}
        </Marker>
        <Marker
          position={{
            lat: markerFiveLat,
            lng: markerFiveLng,
          }}
          label="5"
          animation={2}
          onClick={() => {
            setSelectedCenterFive({ lat: markerFiveLat, lng: markerFiveLng });
          }}
        >
          {selectedCenterFive && (
            <InfoWindow
              onCloseClick={() => {
                setSelectedCenterFive(null);
              }}
              position={{
                lat: selectedCenterFive.latitude,
                lng: selectedCenterFive.longitude,
              }}
            >
              <div className="mapDiv">
                <img src={markerFiveImage} alt="" className="mapImg" />
                <h1 className="mapH">{markerFiveName}</h1>
              </div>
            </InfoWindow>
          )}
        </Marker>
        <Marker
          position={{
            lat: markerSixLat,
            lng: markerSixLng,
          }}
          label="6"
          animation={2}
          onClick={() => {
            setSelectedCenterSix({ lat: markerSixLat, lng: markerSixLng });
          }}
        >
          {selectedCenterSix && (
            <InfoWindow
              onCloseClick={() => {
                setSelectedCenterSix(null);
              }}
              position={{
                lat: selectedCenterSix.latitude,
                lng: selectedCenterSix.longitude,
              }}
            >
              <div className="mapDiv">
                <img src={markerSixImage} alt="" className="mapImg" />
                <h1 className="mapH">{markerSixName}</h1>
              </div>
            </InfoWindow>
          )}
        </Marker>
        <Marker
          position={{
            lat: markerSevenLat,
            lng: markerSevenLng,
          }}
          label="7"
          animation={2}
          onClick={() => {
            setSelectedCenterSeven({
              lat: markerSevenLat,
              lng: markerSevenLng,
            });
          }}
        >
          {selectedCenterSeven && (
            <InfoWindow
              onCloseClick={() => {
                setSelectedCenterSeven(null);
              }}
              position={{
                lat: selectedCenterSeven.latitude,
                lng: selectedCenterSeven.longitude,
              }}
            >
              <div className="mapDiv">
                <img src={markerSevenImage} alt="" className="mapImg" />
                <h1 className="mapH">{markerSevenName}</h1>
              </div>
            </InfoWindow>
          )}
        </Marker>
        <Marker
          position={{
            lat: markerEightLat,
            lng: markerEightLng,
          }}
          label="8"
          animation={2}
          onClick={() => {
            setSelectedCenterEight({
              lat: markerEightLat,
              lng: markerEightLng,
            });
          }}
        >
          {selectedCenterEight && (
            <InfoWindow
              onCloseClick={() => {
                setSelectedCenterEight(null);
              }}
              position={{
                lat: selectedCenterEight.latitude,
                lng: selectedCenterEight.longitude,
              }}
            >
              <div className="mapDiv">
                <img src={markerEightImage} alt="" className="mapImg" />
                <h1 className="mapH">{markerEightName}</h1>
              </div>
            </InfoWindow>
          )}
        </Marker>
        <Marker
          position={{
            lat: markerNineLat,
            lng: markerNineLng,
          }}
          label="9"
          animation={2}
          onClick={() => {
            setSelectedCenterNine({ lat: markerNineLat, lng: markerNineLng });
          }}
        >
          {selectedCenterNine && (
            <InfoWindow
              onCloseClick={() => {
                setSelectedCenterNine(null);
              }}
              position={{
                lat: selectedCenterNine.latitude,
                lng: selectedCenterNine.longitude,
              }}
            >
              <div className="mapDiv">
                <img src={markerNineImage} alt="" className="mapImg" />
                <h1 className="mapH">{markerNineName}</h1>
              </div>
            </InfoWindow>
          )}
        </Marker>
        <Marker
          position={{
            lat: markerTenLat,
            lng: markerTenLng,
          }}
          label="10"
          animation={2}
          onClick={() => {
            setSelectedCenterTen({ lat: markerTenLat, lng: markerTenLng });
          }}
        >
          {selectedCenterTen && (
            <InfoWindow
              onCloseClick={() => {
                setSelectedCenterTen(null);
              }}
              position={{
                lat: selectedCenterTen.latitude,
                lng: selectedCenterTen.longitude,
              }}
            >
              <div className="mapDiv">
                <img src={markerTenImage} alt="" className="mapImg" />
                <h1 className="mapH">{markerTenName}</h1>
              </div>
            </InfoWindow>
          )}
        </Marker>
        <></>
      </GoogleMap>
    </>
  ) : (
    <></>
  );
}
