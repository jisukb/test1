package com.pms.petopia.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.pms.petopia.domain.Hospital;
import com.pms.petopia.service.HospitalService;

@SuppressWarnings("serial")
@WebServlet("/hospital/search")
public class HospitalSearchHandler extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    String keyword = request.getParameter("keyword");

    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();

    out.println("<!DOCTYPE html>");
    out.println("<html>");
    out.println("<head>");
    out.println("<title>병원 검색</title>");
    out.println("</head>");
    out.println("<body>");
    out.printf("<h1>병원 검색 결과 : %s</h1>\n", keyword);

    try {
      if (keyword == null || keyword.length() == 0) {
        throw new SearchException("검색어를 입력하세요.");
      }

      HospitalService hospitalService = (HospitalService) request.getServletContext().getAttribute("hospitalService");

      List<Hospital> list = hospitalService.search(keyword);
      if (list.size() == 0) {
        throw new SearchException("검색어에 해당하는 병원이 없습니다.");
      }

      out.println("<table border='1'>");
      out.println("<thead>");
      out.println("<tr>");
      out.println("<th>번호</th> <th>이름</th> <th>전화</th> <th>주소</th>");
      out.println("</tr>");
      out.println("</thead>");
      out.println("<tbody>");

      for (Hospital h : list) {
        out.printf("<tr>"
            + " <td>%d</td>"
            + " <td><a href='detail?no=%1$d'>%s</a></td>"
            + " <td>%s</td>"
            + " <td>%s</td> </tr>\n",
            h.getNo(),
            h.getName(),
            h.getTel(),
            h.getAddress());
      }
      out.println("</tbody");
      out.println("</table>");

    } catch (SearchException e) {
      out.printf("<p>%s</p>\n", e.getMessage());

    } catch (Exception e) {
      StringWriter strWriter = new StringWriter();
      PrintWriter printWriter = new PrintWriter(strWriter);
      e.printStackTrace(printWriter);

      out.printf("<pre>%s</pre>\n", strWriter.toString());
    }

    out.println("</body>");
    out.println("</html>");
  }
}
