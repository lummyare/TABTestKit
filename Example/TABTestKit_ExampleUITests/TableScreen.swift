//
//  TableScreen.swift
//  TABTestKit_ExampleUITests
//
//  Created by Kane Cheshire on 10/09/2019.
//  Copyright © 2019 The App Business LTD. All rights reserved.
//

import TABTestKit

let tableScreen = TableScreen()

struct TableScreen: Screen {
  
  let trait = Header(id: "Table")
  let table = Table()
  var section0Header: Header {
    return table.header(withID: "SECTION NUMERO 0")
  }
  var section1Header: Header {
    return table.header(withID: "SECTION NUMERO 1")
  }
  var lastCell: Cell {
    return table.cell(index: table.numberOfCells() - 1)
  }
  
}

extension TableScreen: Scrollable {
  
  func scroll(_ direction: ElementAttributes.Direction) {
    table.scroll(direction)
  }
  
}


