<%@ page contentType="image/jpeg" pageEncoding="utf-8" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.image.*" %>
<%@ page import="java.awt.geom.*" %>
<%@ page import="com.sun.image.codec.jpeg.*" %>
<%	int w = 260, h = 260;
		BufferedImage img = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		Graphics g = img.getGraphics();
		g.setColor(Color.white);
		g.fillRect(0, 0, w, h);
		Graphics2D g_2d = (Graphics2D)g;
		Ellipse2D ellipse = new Ellipse2D.Double(40, 80, 100, 40);
		g_2d.setColor(Color.blue);
		AffineTransform trans = new AffineTransform();
		for(int i=1;i<=12;i++){
				trans.rotate(30.0*Math.PI/180, 90, 100);
				g_2d.setTransform(trans);
				g_2d.draw(ellipse);
		}
		g.dispose();
		OutputStream oc = response.getOutputStream();
		JPEGImageEncoder ec = JPEGCodec.createJPEGEncoder(oc);
		ec.encode(img);
%>