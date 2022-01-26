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
        return firstLine + secondLine + thirdLine
    }

    static func getLineOneStations() -> [StationCircleView] {
        var line: [StationCircleView] = []
        return line
    }

    static func getLineTwoStations() -> [StationCircleView] {
        var line: [StationCircleView] = []
        return line
    }

    static func getLineThreeStations() -> [StationCircleView] {
        var line: [StationCircleView] = []
        return line
    }

    static func getLineFourStations() -> [StationCircleView] {
        var line: [StationCircleView] = []
        return line
    }

    static func getLineFiveStations() -> [StationCircleView] {
        var line: [StationCircleView] = []
        return line
    }

    static func createStation(id: String, center: CGPoint, color: UIColor) -> StationCircleView {
        let station = StationCircleView()
        station.center = center
        station.id = id
        station.color = color
        return station
    }


}
