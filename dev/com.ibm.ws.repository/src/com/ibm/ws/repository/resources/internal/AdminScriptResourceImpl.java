/*******************************************************************************
 * Copyright (c) 2015 IBM Corporation and others.
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

package com.ibm.ws.repository.resources.internal;

import java.util.Collection;

import com.ibm.ws.repository.common.enums.ResourceType;
import com.ibm.ws.repository.connections.RepositoryConnection;
import com.ibm.ws.repository.resources.writeable.AdminScriptResourceWritable;
import com.ibm.ws.repository.transport.model.Asset;

public class AdminScriptResourceImpl extends RepositoryResourceImpl implements AdminScriptResourceWritable {

    public AdminScriptResourceImpl(RepositoryConnection repoConnection) {
        this(repoConnection, null);
    }

    public AdminScriptResourceImpl(RepositoryConnection repoConnection, Asset ass) {
        super(repoConnection, ass);
        if (ass == null) {
            setType(ResourceType.ADMINSCRIPT);
        }
    }

    /** {@inheritDoc} */
    @Override
    public String getScriptLanguage() {
        return _asset.getWlpInformation().getScriptLanguage();
    }

    /** {@inheritDoc} */
    @Override
    public void setScriptLanguage(String scriptLang) {
        _asset.getWlpInformation().setScriptLanguage(scriptLang);
    }

    @Override
    public void setAppliesTo(String appliesTo) {
        _asset.getWlpInformation().setAppliesTo(appliesTo);
    }

    /** {@inheritDoc} */
    @Override
    public String getAppliesTo() {
        return _asset.getWlpInformation().getAppliesTo();
    }

    /** {@inheritDoc} */
    @Override
    public void setRequireFeature(Collection<String> requireFeature) {
        _asset.getWlpInformation().setRequireFeature(requireFeature);
    }

    /** {@inheritDoc} */
    @Override
    public Collection<String> getRequireFeature() {
        return _asset.getWlpInformation().getRequireFeature();
    }

    @Override
    protected String getVersionForVanityUrl() {
        return getScriptLanguage();
    }

    @Override
    protected void copyFieldsFrom(RepositoryResourceImpl fromResource, boolean includeAttachmentInfo) {
        super.copyFieldsFrom(fromResource, includeAttachmentInfo);
        AdminScriptResourceImpl adminScriptRes = (AdminScriptResourceImpl) fromResource;
        setScriptLanguage(adminScriptRes.getScriptLanguage());
        setAppliesTo(adminScriptRes.getAppliesTo());
        setRequireFeature(adminScriptRes.getRequireFeature());
    }
}
