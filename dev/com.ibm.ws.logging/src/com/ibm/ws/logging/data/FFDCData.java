/*******************************************************************************
 * Copyright (c) 2018, 2020 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package com.ibm.ws.logging.data;

import java.util.Map;

import com.ibm.ws.logging.collector.LogFieldConstants;

/**
 *
 */
public class FFDCData extends GenericData {

    public FFDCData() {
        super(13);
    }

    public static final String[] NAMES = {
                                           LogFieldConstants.DATETIME,
                                           LogFieldConstants.DATEOFFIRSTOCCURENCE,
                                           LogFieldConstants.COUNT,
                                           LogFieldConstants.MESSAGE,
                                           LogFieldConstants.CLASSNAME,
                                           LogFieldConstants.LABEL,
                                           LogFieldConstants.EXCEPTIONNAME,
                                           LogFieldConstants.PROBEID,
                                           LogFieldConstants.SOURCEID,
                                           LogFieldConstants.THREADID,
                                           LogFieldConstants.STACKTRACE,
                                           LogFieldConstants.OBJECTDETAILS,
                                           LogFieldConstants.SEQUENCE,
                                           LogFieldConstants.HOSTNAME,
                                           LogFieldConstants.WLPUSERDIR,
                                           LogFieldConstants.SERVERNAME,
                                           LogFieldConstants.TYPE
    };

    public static final String[] NAMES1_1 = {
                                              LogFieldConstants.IBM_DATETIME,
                                              LogFieldConstants.DATEOFFIRSTOCCURENCE,
                                              LogFieldConstants.COUNT,
                                              LogFieldConstants.MESSAGE,
                                              LogFieldConstants.IBM_CLASSNAME,
                                              LogFieldConstants.LABEL,
                                              LogFieldConstants.IBM_EXCEPTIONNAME,
                                              LogFieldConstants.IBM_PROBEID,
                                              LogFieldConstants.SOURCEID,
                                              LogFieldConstants.IBM_THREADID, //long
                                              LogFieldConstants.IBM_STACKTRACE,
                                              LogFieldConstants.IBM_OBJECTDETAILS,
                                              LogFieldConstants.IBM_SEQUENCE,
                                              LogFieldConstants.HOST,
                                              LogFieldConstants.IBM_USERDIR,
                                              LogFieldConstants.IBM_SERVERNAME,
                                              LogFieldConstants.TYPE
    };

    public static final short KEYS_JSON = 0;
    public static final short KEYS_LOGSTASH = 1;

    private static NameAliases jsonLoggingNameAliases = new NameAliases(NAMES1_1);
    private static NameAliases logstashNameAliases = new NameAliases(NAMES);

    private static NameAliases[] nameAliases = { jsonLoggingNameAliases, logstashNameAliases };

    public static void newJsonLoggingNameAliases(Map<String, String> newAliases) {
        jsonLoggingNameAliases.newAliases(newAliases);
    }

    public static void resetJsonLoggingNameAliases() {
        jsonLoggingNameAliases.resetAliases();
    }

    private void setPair(int index, String s) {
        setPair(index, NAMES1_1[index], s);
    }

    private void setPair(int index, int i) {
        setPair(index, NAMES1_1[index], i);
    }

    private void setPair(int index, long l) {
        setPair(index, NAMES1_1[index], l);
    }

    //@formatter:off
    public void setDatetime(long l)             { setPair(0, l); }
    public void setDateOfFirstOccurence(long l) { setPair(1, l); }
    public void setCount(int i)                 { setPair(2, i); }
    public void setMessage(String s)            { setPair(3, s); }
    public void setClassName(String s)          { setPair(4, s); }
    public void setLabel(String s)              { setPair(5, s); }
    public void setExceptionName(String s)      { setPair(6, s); }
    public void setProbeId(String s)            { setPair(7, s); }
    public void setSourceId(String s)           { setPair(8, s); }
    public void setThreadId(long l)             { setPair(9, l); }
    public void setStacktrace(String s)         { setPair(10, s); }
    public void setObjectDetails(String s)      { setPair(11, s); }
    public void setSequence(String s)           { setPair(12, s); }

    public long getDatetime()             { return getLongValue(0); }
    public long getDateOfFirstOccurence() { return getLongValue(1); }
    public int getCount()                 { return getIntValue(2); }
    public String getMessage()            { return getStringValue(3); }
    public String getClassName()          { return getStringValue(4); }
    public String getLabel()              { return getStringValue(5); }
    public String getExceptionName()      { return getStringValue(6); }
    public String getProbeId()            { return getStringValue(7); }
    public String getSourceId()           { return getStringValue(8); }
    public long getThreadId()             { return getLongValue(9); }
    public String getStacktrace()         { return getStringValue(10); }
    public String getObjectDetails()      { return getStringValue(11); }
    public String getSequence()           { return getStringValue(12); }

    public static String getDatetimeKey(int format)             { return nameAliases[format].aliases[0]; }
    public static String getDateOfFirstOccurenceKey(int format) { return nameAliases[format].aliases[1]; }
    public static String getCountKey(int format)                { return nameAliases[format].aliases[2]; }
    public static String getMessageKey(int format)              { return nameAliases[format].aliases[3]; }
    public static String getClassNameKey(int format)            { return nameAliases[format].aliases[4]; }
    public static String getLabelKey(int format)                { return nameAliases[format].aliases[5]; }
    public static String getExceptionNameKey(int format)        { return nameAliases[format].aliases[6]; }
    public static String getProbeIdKey(int format)              { return nameAliases[format].aliases[7]; }
    public static String getSourceIdKey(int format)             { return nameAliases[format].aliases[8]; }
    public static String getThreadIdKey(int format)             { return nameAliases[format].aliases[9]; }
    public static String getStacktraceKey(int format)           { return nameAliases[format].aliases[10]; }
    public static String getObjectDetailsKey(int format)        { return nameAliases[format].aliases[11]; }
    public static String getSequenceKey(int format)             { return nameAliases[format].aliases[12]; }
    public static String getHostKey(int format)                 { return nameAliases[format].aliases[13]; }
    public static String getUserDirKey(int format)              { return nameAliases[format].aliases[14]; }
    public static String getServerNameKey(int format)           { return nameAliases[format].aliases[15]; }
    public static String getTypeKey(int format)                 { return nameAliases[format].aliases[16]; }

}