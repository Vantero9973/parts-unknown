import ArrowForwardIcon from "@mui/icons-material/ArrowForward";
import { useQuery } from "@tanstack/react-query";
import Axios from "axios";
import { useNavigate } from "react-router-dom";

export default function LandingPageImages() {
  const navigate = useNavigate();

  const { data: landingImages, isLoading } = useQuery(["landingImage"], () => {
    return Axios.get("/api/landingimages").then((res) => res.data);
  });

  if (isLoading) {
    return <h1>Loading...</h1>;
  }

  return (
    <>
      <div className="absoluteContainer">
        <div className="landingPageImagesContainer">
          <span className="hiddenTitle">{landingImages[0].title}</span>
          <span className="landingPageImagesSpan">
            <div
              className="hiddenTitle"
              onClick={() => navigate(`/blogs/${landingImages[0].id}`)}
            >
              <ArrowForwardIcon className="arrowIcon" />
            </div>
          </span>
        </div>
      </div>
      <div className="hiddenImage">
        <div
          onClick={() => navigate(`/blogs/${landingImages[0].id}`)}
          className="landingPageImagesSecondaryDiv"
        />
      </div>
      <div className="displayFlex">
        {landingImages.map((landingImage) => {
          return (
            <>
              <div className="landingPageImagesSecondaryContainer">
                <div className="landingPageImagesAnotherDiv">
                  <div className="landingPageImagesSpanContainer">
                    <span className="notHiddenImage">{landingImage.title}</span>
                    <span className="landingPageImagesSpan">
                      <div
                        className="notHiddenImage"
                        onClick={() => navigate(`/blogs/${landingImage.id}`)}
                      >
                        <ArrowForwardIcon className="arrowIcon" />
                      </div>
                    </span>
                  </div>
                </div>
                <div className="notHiddenImageSecondary">
                  <div
                    onClick={() => navigate(`/blogs/${landingImage.id}`)}
                    className="landingImage"
                  />
                </div>
              </div>
            </>
          );
        })}
      </div>
    </>
  );
}
