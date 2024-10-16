/*******************************************************************************
 * Copyright (c) 1997, 2010 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-2.0/
 * 
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package com.ibm.wsspi.webcontainer.async;

/**
 * 
 * Class that wraps the Runnable an application passes to start(Runnable).  Most of the heavy lifting has been
 * moved to the Impl for our uses.
 * @ibm-private-in-use
 */
public interface WrapperRunnable extends Runnable {

	public void run();

	public boolean getAndSetRunning(boolean b);
}
