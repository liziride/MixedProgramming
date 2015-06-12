//
//  MapViewController.swift
//  MixedProgramming
//
//  Created by 黎春阳 on 15/6/8.
//  Copyright (c) 2015年 黎春阳. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapViewController: UIViewController,MKMapViewDelegate {
    var mapView:MKMapView!
    var startCoor:CLLocationCoordinate2D!
    var endCoor:CLLocationCoordinate2D!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView = self.view.viewWithTag(1) as! MKMapView
        mapView.delegate = self
        mapView.userTrackingMode = MKUserTrackingMode.Follow
    }
    
    func mapView(mapView: MKMapView!, didUpdateUserLocation userLocation: MKUserLocation!) {
        if userLocation != nil{
            startCoor = userLocation.location.coordinate
            if endCoor == nil{
                endCoor = CLLocationCoordinate2DMake(startCoor.latitude + 0.02,startCoor.longitude - 0.02)
            }
            
            var currentLocation = MKMapItem.mapItemForCurrentLocation()
            
            var toLocation = MKMapItem(placemark: MKPlacemark(coordinate: endCoor, addressDictionary: nil))
            toLocation.name = "北京西站";
            
            MKMapItem.openMapsWithItems([currentLocation,toLocation], launchOptions: [MKLaunchOptionsDirectionsModeKey:MKLaunchOptionsDirectionsModeDriving,MKLaunchOptionsShowsTrafficKey:true])
        }
    }
}