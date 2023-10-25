package org.abstractica.motorbox;

import org.abstractica.javacsg.*;
import org.abstractica.javaopenscad.impl.core.AGeometry2D;

public class BoxTest {
	//ALT SKREVET I MM
	//Width = x, height = y, depth = z
	static JavaCSG csg = JavaCSGFactory.createDefault();

	static Geometry3D hinge(double x, double y, double z) {
		double rectWidth = 5;
		double rectHeight = 5;
		double rectDepth = 2;
		Geometry3D rect = csg.box3D(rectWidth, rectHeight, rectDepth, true);
		return csg.translate3D(x, y + rectHeight/2, z).transform(rect);
	}
	static Geometry3D miniDut(double x, double y, double z){
		double circleDiameter = 4;
		double circleDepth = 2;
		Geometry2D circle = csg.circle2D(circleDiameter, 64);
		Geometry3D cylinder = csg.linearExtrude(circleDepth, true, circle);
		return csg.translate3D(x, y, z).transform(cylinder);
	}

	static Geometry3D dimmedute(double x, double y, double z) {
		double rectWidth = 6;
		double rectHeight = 4;
		double rectDepth = 2.5;
		Geometry3D rect = csg.box3D(rectWidth, rectHeight, rectDepth, true);
		return csg.translate3D(x, y, z).transform(rect);
	}

	static Geometry3D sidesticks(double x, double y, double z) {
		double cylinderDiameter = 5;
		double cylinderDepth = 37;
		Geometry2D circle = csg.circle2D(cylinderDiameter, 64);
		Geometry3D cylinder = csg.linearExtrude(cylinderDepth, true, circle);
		return csg.translate3D(x, y, z).transform(cylinder);
	}

	static Geometry3D bottomHalf(double x, double y, double z) {
		//Depth from flat side to flat side is 17 mm
		double topCylinderDiameter = 22.4;
		double topCylinderDepth = 11;
		double bottomCylinderDiameter = 20.4;
		double bottomCylinderDepth = 16;

		//5.4 is half the difference between the mainBox depth and the diameter of the top cylinder
		Geometry2D topRect = csg.rectangle2D(topCylinderDiameter, 5.4);
		Geometry2D bottomRect = csg.rectangle2D(topCylinderDiameter, 5.4);
		topRect = csg.translate2DY(topCylinderDiameter / 2).transform(topRect);
		bottomRect = csg.translate2DY(topCylinderDiameter / 2 * -1).transform(bottomRect);

		Geometry2D topCircle = csg.circle2D(topCylinderDiameter, 64);
		topCircle = csg.difference2D(topCircle, topRect);
		topCircle = csg.difference2D(topCircle, bottomRect);

		Geometry2D bottomCircle = csg.circle2D(bottomCylinderDiameter, 64);
		bottomCircle = csg.difference2D(bottomCircle, topRect);
		bottomCircle = csg.difference2D(bottomCircle, bottomRect);

		Geometry3D topCylinder = csg.linearExtrude(topCylinderDepth, true, topCircle);
		Geometry3D bottomCylinder = csg.linearExtrude(bottomCylinderDepth, true, bottomCircle);
		topCylinder = csg.translate3D(0, 0, topCylinderDepth/2).transform(topCylinder);
		bottomCylinder = csg.translate3D(0, 0, topCylinderDepth+bottomCylinderDepth/2).transform(bottomCylinder);
		Geometry3D joinedCylinder = csg.union3D(topCylinder, bottomCylinder);
		joinedCylinder = csg.rotate3DX(csg.degrees(90)).transform(joinedCylinder);
		return csg.translate3D(x, y, z).transform(joinedCylinder);
	}

    static Geometry3D plastic(double x, double y, double z) {
        double rectWidth = 12;
        double rectHeight = 25.5;
        double rectDepth = 1;
		Geometry3D rect = csg.box3D(rectWidth, rectHeight, rectDepth, true);
		return csg.translate3D(x, y, z).transform(rect);
    }

    static Geometry3D plasticTip(double x, double y, double z){
		double rectWidth = 8.6;
		double rectHeight = 3;
		double rectDepth = 19;
		Geometry3D rect = csg.box3D(rectWidth, rectHeight, rectDepth, true);
		return csg.translate3D(x, y, z).transform(rect);

	}

    static Geometry3D endCircle(double x,double y, double z){
		double cirlceDiameter = 15;
		double circleDepth = 2.5;
		double circleAngularRes = 64;
		Geometry2D circle = csg.circle2D(cirlceDiameter, 64);
		Geometry3D cylinder = csg.linearExtrude(circleDepth, true, circle);
		cylinder = csg.rotate3DX(csg.degrees(90)).transform(cylinder);
		return csg.translate3D(x, y, z).transform(cylinder);
	}

	static Geometry3D container() {
		double rectWidth = 40;
		double rectHeight = 90;
		double rectDepth = 40;
		Geometry3D topLeft = csg.sphere3D(20, 64, true);
		Geometry3D topRight = csg.sphere3D(20, 64, true);
		Geometry3D bottomLeft = csg.sphere3D(20, 64, true);
		Geometry3D bottomRight = csg.sphere3D(20, 64, true);
		topLeft = csg.translate3D(rectWidth / 3, rectHeight / 3, rectDepth / 3).transform(topLeft);
		topRight = csg.translate3D(rectWidth / 3 * -1, rectHeight / 3, rectDepth / 3).transform(topRight);
		bottomLeft = csg.translate3D(rectWidth / 3, rectHeight / 3 * -1, rectDepth / 3).transform(bottomLeft);
		bottomRight = csg.translate3D(rectWidth / 3 * -1, rectHeight / 3 * -1, rectDepth / 3).transform(bottomRight);


		Geometry3D hull = csg.hull3D(topLeft, topRight, bottomLeft, bottomRight);

		Geometry3D rect = csg.box3D(90, 90, 0.1, true);
		rect = csg.translate3D(0, 0, 13.325).transform(rect); //13.325 is half the depth of the container
		hull = csg.difference3D(hull, rect);

		return csg.translate3D(0, -30, -13.325).transform(hull);
	}


	public static void main(String[] args) {
		//Circle radius = 2, rectangle height = 33+circle diameter
		double rectangleWidth = 22.4;
		double circleDiameter = 4;
		double rectangleHeight = 37;
		double rectangleDepth = 19;

		Geometry2D rectangle = csg.rectangle2D(rectangleWidth, rectangleHeight-circleDiameter);
		Geometry2D circle = csg.circle2D(circleDiameter, 64);
		Geometry2D circle2 = csg.circle2D(circleDiameter, 64);

		circle = csg.translate2DX(((rectangleWidth / 2 - circleDiameter / 2) * -1)).transform(circle);
		circle = csg.translate2DY(rectangleHeight / 2).transform(circle);
		circle2 = csg.translate2DX(rectangleWidth / 2 - circleDiameter / 2).transform(circle2);
		circle2 = csg.translate2DY(rectangleHeight / 2).transform(circle2);

		Geometry2D hullModel = csg.hull2D(rectangle, circle, circle2);
		//Centering the model
		hullModel = csg.translate2DY((circleDiameter/2+rectangleHeight/2)*-1).transform(hullModel);
		Geometry3D full = csg.linearExtrude(rectangleDepth, true, hullModel);
		full = csg.union3D(hinge(0, 0, 0), full);
		full = csg.union3D(bottomHalf(0, -rectangleHeight, 1), full);
		//top dimmedut
		full = csg.union3D(dimmedute(0, (rectangleHeight + 5.5)*-1, 9+1.75), full);
		//bottom dimmedut
		full = csg.union3D(dimmedute(0, (rectangleHeight + 5.5)*-1, -8-0.75), full);
		full = csg.union3D(sidesticks(0, -11, 0), full);
		full = csg.union3D(miniDut(0,-20.4,(rectangleDepth/2)*-1-1), full);
		//top plastic
		full = csg.union3D(plastic(0,-rectangleHeight-14.5,rectangleDepth/2+0.5),full);
		//bottom plastic
		full = csg.union3D(plastic(0,-rectangleHeight-14.5,-8),full);
		full = csg.union3D(endCircle(0,rectangleHeight*-1-26-2,0), full);
		full = csg.union3D(plasticTip(0,rectangleHeight*-1-26-1.75, 1), full);

		full = csg.rotate3DY(csg.degrees(90)).transform(full);
		full = csg.scale3D(1.02, 1.02, 1.02).transform(full);
		Geometry3D container = container();

		full = csg.difference3D(container, full);
		csg.view(full);

	}
}
