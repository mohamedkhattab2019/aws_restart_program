# aws_restart_program
# AWS-CDK 
## What is AWS CDK?
* AWS Cloud Development Kit (AWS CDK) is an open-source software development framework for defining cloud infrastructure as code. \
* What does AWS CDK do?
  Compiling your source code into an assembly language is a common code-development process. Think of AWS CDK as a compiler that compiles your source code   into an AWS CloudFormation template. 
  
 <img src="https://assets.skillbuilder.aws/files/a/w/aws_prod1_docebosaas_com/1650805200/Qdojg7i-CYf3QGbwq7HlwA/tincan/b450fd4f5b346b88f24b2c75349b1a15f069c464/assets/f1WSYwFVJTkWU8H8_hKhS2tEmTTiYy5l8.png">
 
This example diagram demonstrates the ability of AWS CDK to deploy cloud infrastructure into the AWS Cloud. A developer interacts with AWS CDK and its three main components (App, Stack, and Construct) to synthesize an AWS CloudFormation template, then deploy AWS resources for their organization's users. In this example, the developer created a Well-Architected solution containing an Amazon Virtual Private Cloud (Amazon VPC), Elastic Load Balancing (ELB), and Amazon Elastic Container Service (Amazon ECS).

## Core framework of AWS CDK
**Three basic components make up the core framework of an AWS CDK project.**

### Constructs
Constructs are the basic building blocks of AWS CDK apps. A construct represents a cloud component and encapsulates everything that AWS CloudFormation needs to create the component. A construct can represent a single cloud resource (such as an AWS Lambda function), or it can represent a higher-level component consisting of multiple AWS CDK resources.
#### What are constructs?
AWS CDK uses compositions to define complex constructs. A composition establishes a parent-child build hierarchy. The parent composition is composed of child constructs or compositions. This nesting pattern can continue with deeply nested compositions in which you define constructs inside other constructs. 
**The composition of constructs means that you can define reusable components and share them like any other code.**

To enable this pattern, you can define constructs inside the scope of another construct. This scoping pattern results in a hierarchy of constructs known as a construct tree. In the AWS CDK, the root of the tree represents your entire AWS CDK app. Within the app, you typically define one or more stacks. Stacks are the actual unit of deployment, and are similar to AWS CloudFormation stacks. Stacks are made up of constructs and compositions.

AWS CDK includes the AWS Construct Library, which contains constructs representing Amazon Web Services (AWS) resources. This library includes constructs that represent all the resources available on AWS.
#### How are constructs used?

Constructs are implemented in classes that extend the Construct base class. You define a construct by instantiating the class. All constructs take three parameters when they are initialized: scope, id, and props.
* Scope
The first argument, scope, is the construct in which this construct is created. In most cases, you define a construct in the scope of itself, which means you usually pass this for the first argument.
* id, is the local identifier of the construct that must be unique within this scope. AWS CDK uses this identifier to calculate the AWS CloudFormation logical ID for each resource defined within this scope. In this example, MyVpc is is passed as the ID.
* rops
The third argument, props, is a set of initialization properties that are specific to each construct and define its initial configuration. For example, the Vpc.Function construct accepts properties such as maxAzs, cidr, and subnetConfiguration. You can explore the various options using the auto-complete feature of your IDE or in the online documentation.

#### Levels of constructs
The library contains three levels of constructs: AWS CDK pattern constructs, AWS resource constructs, and AWS CloudFormation resource constructs.
* **AWS CDK pattern constructs**
Level 3 includes AWS CDK pattern constructs, developed by AWS engineers, and provides opinionated best-practice patterns by default. These higher-level constructs stitch together multiple resources and generally represent reference architectures or design patterns to help you complete common tasks in AWS.
* **AWS resource constructs**
AWS resource constructs represent AWS resources but with a higher level of purpose. They provide the same resource functionality, but they handle many of the details required by AWS CloudFormation resource constructs. AWS resource constructs use established defaults, reducing the need to know all the details about the AWS resources the construct is representing. This provides a convenient method to work with the resource. 
* **AWS CloudFormation resource constructs**
AWS CloudFormation Resource constructs are the lowest-level (L1) constructs. They mirror the AWS CloudFormation resource types and are updated with each release of AWS CDK

### Stacks
Stacks are a unit of deployment in AWS CDK. All AWS resources defined within the scope of a stack, directly or indirectly, are provisioned as a single unit. Because AWS CDK stacks are implemented through AWS CloudFormation stacks, they have the same limitations. You can define any number of stacks in an AWS CDK app.

### Apps
Your CDK application is an app, and is represented by the AWS CDK App class. To provision infrastructure resources, all constructs that represent AWS resources must be defined, directly or indirectly, within the scope of a stack construct.
<img src="https://assets.skillbuilder.aws/files/a/w/aws_prod1_docebosaas_com/1650816000/_ax19IVBtunBmvEFOfO-JA/tincan/b450fd4f5b346b88f24b2c75349b1a15f069c464/assets/35iXDRdrjn8Nk9hW_o1GeBcztj7Zu-nXK.png">
* The App construct
Every AWS CDK application is represented by the AWS CDK class App. Made up of one or more stacks, Apps can contain one or more constructs. 
The App construct represents the entire AWS CDK app. This construct is normally the root of the construct tree.
### Nested stacks
AWS CDK gains its deployment power from AWS CloudFormation. However, it is also bound by AWS CloudFormation resource limit of 200 resources. A way around the resource limit is to create a nested stack. 
<img src="https://assets.skillbuilder.aws/files/a/w/aws_prod1_docebosaas_com/1650816000/_ax19IVBtunBmvEFOfO-JA/tincan/b450fd4f5b346b88f24b2c75349b1a15f069c464/assets/I60wZKU7T-vLcMN4_x8d81O70Or0zJN2x.png">

## How AWS CDK interacts with supported programming languages
AWS builds the business logic of AWS Construct Library packages in TypeScript, and uses AWS JSii to provide mappings to each supported programming language.

## AWS CDK Concepts
To use the AWS CDK, you must understand key concepts that make up an AWS CDK App. This module will focus on identifiers, environments, contexts, and assets.
### Identifiers
AWS CDK uses various types of identifiers. To use the AWS CDK effectively and avoid errors, you need to understand the types of identifiers.

Identifiers must be unique within the scope in which they were created. Familiarize yourself with the types of identifiers used:
* Construct IDs
* Paths
* Unique IDs
* Logical IDs

* Construct IDs
id is the most common identifier. It is passed as the second argument when instantiating a construct. 
This identifier must be unique only in the scope in which it is created, which is the first argument when instantiating a construct.

* Paths
The constructs in an AWS CDK application form a hierarchy rooted in the App class. This hierarchy is called a path.
The path refers to the collection of IDs from a given construct, its parent construct, its grandparent, and so on, to the root of the construct tree. AWS CDK displays paths in your templates as a string, with the IDs from the levels separated by slashes.
* Unique IDs
AWS CDK requires that all identifiers in an AWS CloudFormation template are unique. 
To meet this requirement, AWS CDK generates a unique identifier for each construct in an application. AWS CDK uses the construct path to generate an eight-character hash.

### Environments
Environment (env) represents the AWS account and AWS Region in which a stack is deployed. 

Example :
```typescript
const app = new cdk.App();
const env1 = { account: '444455556666', region:'us-west-1'};
const env2 = { account: '123456789012', region:'us-west-2'};
new CdkPrimerStack(app, 'CdkPrimerStack', { env: env1 });
new CdkPrimerStack(app, 'CdkPrimerStack2', { env: env2 });
```
