//
//  Source.swift
//  Checksum
//
//  Created by Ruben Nine on 10/5/18.
//  Copyright © 2018 9Labs. All rights reserved.
//

import Foundation

protocol Source: class {
    static var schemes: [String] { get }

    init?(url: URL)

    var url: URL { get }
    var size: Int { get }
    var seekable: Bool { get }

    func seek(position: Int, whence: Int) -> Bool
    func tell() -> Int
    func read(amount: Int) -> Data?
    func close()
    func eof() -> Bool
}