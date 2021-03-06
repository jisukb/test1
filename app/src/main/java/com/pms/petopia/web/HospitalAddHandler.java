package com.pms.petopia.web;

import java.io.IOException;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.pms.petopia.domain.Hospital;
import com.pms.petopia.domain.SmallAddress;
import com.pms.petopia.service.HospitalService;
import net.coobird.thumbnailator.ThumbnailParameter;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;
import net.coobird.thumbnailator.name.Rename;

@SuppressWarnings("serial")
@MultipartConfig(maxFileSize = 1024 * 1024 * 10)
@WebServlet("/hospital/add")
public class HospitalAddHandler extends HttpServlet {

  private String uploadDir;

  @Override
  public void init() throws ServletException {
    this.uploadDir = this.getServletContext().getRealPath("/upload");
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    response.setContentType("text/html;charset=UTF-8");
    request.getRequestDispatcher("/jsp/hospital/form.jsp").include(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    HospitalService hospitalService = (HospitalService) request.getServletContext().getAttribute("hospitalService");

    try {
      Hospital hospital = new Hospital();
      hospital.setName(request.getParameter("name"));
      hospital.setTel(request.getParameter("tel"));
      hospital.setAddress(request.getParameter("address"));
      hospital.setStartTime(Integer.valueOf(request.getParameter("startTime")));
      hospital.setEndTime(Integer.valueOf(request.getParameter("endTime")));
      hospital.setParking(Integer.valueOf(request.getParameter("parking")));
      hospital.setVeterinarian(Integer.valueOf(request.getParameter("vet")));

      Part photoPart = request.getPart("photo");
      if (photoPart.getSize() > 0) {
        // ????????? ???????????? ????????? ?????????,
        String filename = UUID.randomUUID().toString();
        photoPart.write(this.uploadDir + "/" + filename);
        hospital.setPhoto(filename);

        // ????????? ????????? ??????
        Thumbnails.of(this.uploadDir + "/" + filename)
        .size(300, 300)
        .outputFormat("jpg")
        .crop(Positions.CENTER)
        .toFiles(new Rename() {
          @Override
          public String apply(String name, ThumbnailParameter param) {
            return name + "_300x300";
          }
        });
      }

      SmallAddress smallAddress = new SmallAddress();
      smallAddress.setNo(Integer.parseInt(request.getParameter("cno")));
      hospital.setSmallAddress(smallAddress);

      hospitalService.add(hospital);
      response.sendRedirect("list");

    } catch (Exception e) {
      throw new ServletException(e);
    }
  }
}
