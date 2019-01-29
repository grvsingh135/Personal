<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Accout</fullName>
        <field>Rating</field>
        <literalValue>Cold</literalValue>
        <name>Accout</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Annual Revenue</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Account.SLAExpirationDate__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Annual Revenue should be greater then 100</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Accout</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Account.SLAExpirationDate__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>PageLayoutReadOnly</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Rating</field>
            <operation>equals</operation>
            <value>Cold</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
