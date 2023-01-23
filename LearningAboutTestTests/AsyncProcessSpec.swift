//
//  AsyncProcessSpec.swift
//  LearningAboutTestTests
//
//  Created by Kleiton Mendes on 10/01/23.
//

import Nimble
import Quick
@testable import LearningAboutTest

final class AsyncProcessSpec: QuickSpec {

    override func spec(){
        describe("AsyncProcess") {
            context("callThatResultsInSideEffect") {
                it("CallThat") {
                    let asyncProcess = AsyncProcess()
                    asyncProcess.callThatResultsInSideEffect()
                    expect(asyncProcess.name).toEventually(equal("Curso"))
                }
            }
            
            it("Do Stuff") {
                let asyncProcess = AsyncProcess()
                
                waitUntil { done in
                    asyncProcess.doStuff { result in
                        expect(result).to(equal("Curso"))
                        done()
                    }
                }
            }
        }
    }

}
