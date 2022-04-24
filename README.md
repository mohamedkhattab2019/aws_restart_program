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

### Stacks
Stacks are a unit of deployment in AWS CDK. All AWS resources defined within the scope of a stack, directly or indirectly, are provisioned as a single unit. Because AWS CDK stacks are implemented through AWS CloudFormation stacks, they have the same limitations. You can define any number of stacks in an AWS CDK app.

### Apps
Your CDK application is an app, and is represented by the AWS CDK App class. To provision infrastructure resources, all constructs that represent AWS resources must be defined, directly or indirectly, within the scope of a stack construct.

## How AWS CDK interacts with supported programming languages
AWS builds the business logic of AWS Construct Library packages in TypeScript, and uses AWS JSii to provide mappings to each supported programming language.


