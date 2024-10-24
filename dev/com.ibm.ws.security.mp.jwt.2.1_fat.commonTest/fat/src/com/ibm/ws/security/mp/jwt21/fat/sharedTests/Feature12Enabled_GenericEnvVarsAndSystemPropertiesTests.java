/*******************************************************************************
 * Copyright (c) 2022, 2023 IBM Corporation and others.
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
package com.ibm.ws.security.mp.jwt21.fat.sharedTests;

import org.junit.runner.RunWith;

import com.ibm.ws.security.fat.common.mp.jwt.MPJwt21FatConstants;
import com.ibm.ws.security.fat.common.mp.jwt.sharedTests.MPJwt21MPConfigTests;
import com.ibm.ws.security.fat.common.mp.jwt.utils.MP21ConfigSettings;

import componenttest.custom.junit.runner.FATRunner;
import componenttest.custom.junit.runner.Mode;
import componenttest.custom.junit.runner.Mode.TestMode;
import componenttest.topology.impl.LibertyServer;

/**
 * This is the test class that will verify that we get the correct behavior when we
 * have mp-config defined as environment variables or system properties
 * We'll test with a server.xml that will NOT have a mpJwt config, the app will NOT have mp-config specified
 * Therefore, we'll be able to show that the config is coming from the environment variables or system properties
 * We will reconfigure the server to add config attributes to allow specific tests to get past failures tested by
 * other tests in this class.
 *
 **/

@Mode(TestMode.FULL)
@RunWith(FATRunner.class)
public class Feature12Enabled_GenericEnvVarsAndSystemPropertiesTests extends MPJwt21MPConfigTests {

    public static Class<?> thisClass = Feature12Enabled_GenericEnvVarsAndSystemPropertiesTests.class;

    // extending class will define the server (they use different server instances (with/without jvm.options))
    public static LibertyServer resourceServer;

    public static void commonMpJwt21Setup(LibertyServer requestedServer, MPConfigLocation where) throws Exception {

        resourceServer = requestedServer;

        setUpAndStartBuilderServer(jwtBuilderServer, "server_using_buildApp.xml");

        MP21ConfigSettings mpConfigSettings = new MP21ConfigSettings(MP21ConfigSettings.PublicKeyLocationNotSet, MP21ConfigSettings.PublicKeyNotSet, MP21ConfigSettings.IssuerNotSet, MPJwt21FatConstants.X509_CERT, MPJwt21FatConstants.COOKIE, "myJwtCookie", "client01, client02", MPJwt21FatConstants.SIGALG_ES256, MP21ConfigSettings.DecryptKeyLocNotSet, MP21ConfigSettings.DefaultTokenAge, MP21ConfigSettings.DefaultClockSkew, MP21ConfigSettings.DefaultKeyMgmtKeyAlg);
        setUpAndStartRSServerForTests(resourceServer, "rs_server_AltConfigNotInApp_12ServerXmlConfig.xml", mpConfigSettings, where);

    }

    //    /**
    //     * The mp config properties set as env vars/system properties indicate that the token should be passed as a cookie with name
    //     * "myJwtCookie"
    //     * Pass the token as a cookie with the name "myJwtCookie".
    //     * Show that with the mpJwt-1.1 feature, the runtime can't find the token (it only looks in the header)
    //     *
    //     * @throws Exception
    //     */
    //    @Test
    //    public void Feature11Enabled_GenericEnvVarsAndSystemPropertiesTests_HeaderCookie_test() throws Exception {
    //
    //        standard21TestFlow(MPJwt21FatConstants.SIGALG_ES256, resourceServer, MPJwt21FatConstants.NO_MP_CONFIG_IN_APP_ROOT_CONTEXT,
    //                MPJwt21FatConstants.NO_MP_CONFIG_IN_APP_APP, MPJwt21FatConstants.MPJWT_APP_CLASS_NO_MP_CONFIG_IN_APP, MPJwt21FatConstants.COOKIE,
    //                "myJwtCookie", setMissingTokenExpectations(resourceServer));
    //    }
    //
    //    /**
    //     * The mp config properties set as env vars/system properties indicate that the token should be passed as a cookie with name
    //     * "myJwtCookie"
    //     * Pass the token as Bearer in the Authorization header - this is how mpJwt-1.1 expects it.
    //     * The server does not have an audience configured - the mp config properties set as env vars/system properties has the
    //     * audience set, but
    //     * since mpJwt-1.1 should not know about that, we should expect a failure stating that the audience is NOT valid.
    //     *
    //     * @throws Exception
    //     */
    //    @Test
    //    public void Feature11Enabled_GenericEnvVarsAndSystemPropertiesTests_Audience_test() throws Exception {
    //
    //        standard12TestFlow(MPJwt21FatConstants.SIGALG_ES256, resourceServer, MPJwt21FatConstants.NO_MP_CONFIG_IN_APP_ROOT_CONTEXT,
    //                MPJwt21FatConstants.NO_MP_CONFIG_IN_APP_APP, MPJwt21FatConstants.MPJWT_APP_CLASS_NO_MP_CONFIG_IN_APP, MPJwt21FatConstants.AUTHORIZATION,
    //                MPJwt21FatConstants.TOKEN_TYPE_BEARER, setBadAudiencesExpectations(resourceServer));
    //    }
    //
    //    /**
    //     * The mp config properties set as env vars/system properties indicate that the signature algorithm should be ES256.
    //     * Create a token using ES256 and set the key to an ES256 cert. The algorithm mp config property will be ignored, so,
    //     * the runtime will use the default value of RS256.
    //     * Expect the request to fail as the algorithm and cert won't match.
    //     * (We reconfigure the server to add the correct audiences to the config (without that, we'd fail before the algorithm check)
    //     *
    //     * @throws Exception
    //     */
    //    @Test
    //    public void Feature11Enabled_GenericEnvVarsAndSystemPropertiesTests_Algorithm_test() throws Exception {
    //
    //        resourceServer.reconfigureServerUsingExpandedConfiguration(_testName, "rs_server_AltConfigNotInApp_11ServerXmlConfig_withAudiences.xml");
    //        standard12TestFlow(MPJwt21FatConstants.SIGALG_ES256, resourceServer, MPJwt21FatConstants.NO_MP_CONFIG_IN_APP_ROOT_CONTEXT,
    //                MPJwt21FatConstants.NO_MP_CONFIG_IN_APP_APP, MPJwt21FatConstants.MPJWT_APP_CLASS_NO_MP_CONFIG_IN_APP, MPJwt21FatConstants.AUTHORIZATION,
    //                MPJwt21FatConstants.TOKEN_TYPE_BEARER, setBadCertExpectations(resourceServer, KeyMismatch));
    //    }
    //
    //    /**
    //     * All mpJwt-1.2 mp config properties set as env vars/system properties are set, but should be ignored. This test
    //     * overrides all of those values in server.xml just to show that with those env vars/system properties set, we'll
    //     * have access with the server.xml config attrs set.
    //     *
    //     * @throws Exception
    //     */
    //    @Test
    //    public void Feature11Enabled_GenericEnvVarsAndSystemPropertiesTests_overridAll_test() throws Exception {
    //
    //        resourceServer.reconfigureServerUsingExpandedConfiguration(_testName, "rs_server_AltConfigNotInApp_11ServerXmlConfig_withAudiencesAndSigAlg.xml");
    //        standard12TestFlow(MPJwt21FatConstants.SIGALG_ES256, resourceServer, MPJwt21FatConstants.NO_MP_CONFIG_IN_APP_ROOT_CONTEXT,
    //                MPJwt21FatConstants.NO_MP_CONFIG_IN_APP_APP, MPJwt21FatConstants.MPJWT_APP_CLASS_NO_MP_CONFIG_IN_APP, MPJwt21FatConstants.AUTHORIZATION,
    //                MPJwt21FatConstants.TOKEN_TYPE_BEARER, null);
    //    }

}
