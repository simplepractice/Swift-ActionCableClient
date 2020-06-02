//
//  JSONSerializerTest.swift
//  ActionCableClientTests
//
//  Created by Gleb Pavliuchenko on 6/2/20.
//  Copyright © 2020 Daniel Rhodes. All rights reserved.
//

@testable import ActionCableClient
import XCTest

class JSONSerializerTest: XCTestCase {
  func testDisconnectMessage() throws {
    let string = "{\"type\":\"disconnect\",\"reason\":\"unauthorized\",\"reconnect\":false}"
    let message = try? JSONSerializer.deserialize(string)
    XCTAssertNotNil(message)
    XCTAssertEqual(message!.messageType, MessageType.disconnect)
    XCTAssertEqual(message!.actionName, "unauthorized")
  }
}
