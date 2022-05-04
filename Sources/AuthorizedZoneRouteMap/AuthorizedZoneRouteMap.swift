
import Module
import ModelInterfaces

public protocol AuthorizedZoneRouteMap: AnyObject {
    func rootModuleAfterAuthorization(account: AccountModelProtocol) -> AuthorizedZoneModule
    func rootModuleAfterLaunch() -> AuthorizedZoneModule
}

public protocol AuthorizedZoneModuleInput: AnyObject {
    
}

public protocol AuthorizedZoneModuleOutput: AnyObject {
    func openAuthorization()
}

public typealias AuthorizedZoneModule = Module<AuthorizedZoneModuleInput, AuthorizedZoneModuleOutput>
