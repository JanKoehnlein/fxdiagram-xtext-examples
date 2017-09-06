/*
 * generated by Xtext 2.12.0
 */
package org.eclipse.xtext.example.fowlerdsl.ide

import com.google.inject.Guice
import org.eclipse.xtext.example.fowlerdsl.StatemachineRuntimeModule
import org.eclipse.xtext.example.fowlerdsl.StatemachineStandaloneSetup
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages as language servers.
 */
class StatemachineIdeSetup extends StatemachineStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new StatemachineRuntimeModule, new StatemachineIdeModule))
	}
	
}
