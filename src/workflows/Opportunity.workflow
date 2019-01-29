<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Auto_Assign_Name</fullName>
        <field>Name</field>
        <formula>LEFT(Account.Name , 10)   &amp;  TEXT(DAY(TODAY())) &amp; TEXT(MONTH(TODAY()))&amp; TEXT(YEAR(TODAY()))</formula>
        <name>Auto Assign Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Final_Action</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Final Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Intial_Phoase</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Pending</literalValue>
        <name>Intial Phoase</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rejected_Action</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Rejected Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Auto Assign Name of the opportunity</fullName>
        <actions>
            <name>Auto_Assign_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Name</field>
            <operation>notEqual</operation>
            <value></value>
        </criteriaItems>
        <description>Auto assign name of opportunity in form of &apos;FirstNameDDMMYYYY&apos; is user does not belong to &apos;Integration User Profile &apos; OR System Administrator Profile</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
