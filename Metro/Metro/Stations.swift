//
//  Stations.swift
//  Metro
//
//  Created by Егор Зайнуллин on 26.01.2022.
//

import Foundation
import UIKit

class Stations {
    static func getStations() -> [StationCircleView] {
        let firstLine = getLineOneStations()
        let secondLine = getLineTwoStations()
        let thirdLine = getLineThreeStations()
        let fourthLine = getLineFourStations()
        let fifthLine = getLineFiveStations()
        return firstLine + secondLine + thirdLine + fourthLine + fifthLine
    }

    private static func getLineOneStations() -> [StationCircleView] {
        let line: [StationCircleView] = []
        return line
    }

    private static func getLineTwoStations() -> [StationCircleView] {
        let line: [StationCircleView] = [
            createStation(id: "Parnas", center: CGPoint(x: 100, y: 100), color: .blue),
            createStation(id: "Prospekt Prosvescheniya", center: CGPoint(x: 100, y: 120), color: .blue),
            createStation(id: "Ozerki", center: CGPoint(x: 100, y: 140), color: .blue)
        ]
        return line
    }

    private static func getLineThreeStations() -> [StationCircleView] {
        let line: [StationCircleView] = []
        return line
    }

    private static func getLineFourStations() -> [StationCircleView] {
        let line: [StationCircleView] = []
        return line
    }

    private static func getLineFiveStations() -> [StationCircleView] {
        let line: [StationCircleView] = []
        return line
    }

    static func createStation(id: String, center: CGPoint, color: UIColor) -> StationCircleView {
        let station = StationCircleView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        station.center = center
        station.id = id
        station.color = color
        return station
    }


}
