<Terminals>
CLASS 0
PUBLIC 0
PROTECTED 0
PRIVATE 0
STATIC 0
COLON 0
LEFT 0
RIGHT 1
LEFTSCOPE 0
RIGHTSCOPE 1
VOID 0
SEMICOLON 1
BOOLEAN 0
INTEGER 0
IF 0
WHILE 0
BREAK 0
CONTINUE 0
RETURN 0
ASSIGNMENT 0
EQUAL 0
OR 0
AND 0
PLUS 0
MINUS 0
MULTIPLE 0
DIVIDE 0
TRUE 0
FALSE 0
NUM 0
ID 0
$ 1
</Terminals>
<NonTerminals>
compilationUnit
typeDeclarations
typeDeclaration
classModifiers
classBody
classModifier
classBody
classBodyDeclarations
classBodyDeclaration
methodDeclaration
type
variableDeclarators
variableDeclarator
variableDeclaratorId
variableInitializer
expression
methodHeader
methodBody
methodModifiers
resultType
methodDeclarator
methodModifier
formalParameterList
formalParameter
block
numericType
integralType
blockStatements
blockStatement
localVariableDeclaration
statement
statementWithoutTrailingSubstatement
ifThenStatement
whileStatement
emptyStatement
expressionStatement
breakStatement
continueStatement
returnStatement
statementExpression
assignment
expression
assignmentExpression
conditionalExpression
leftHandSide
assignmentOperator
expressionName
conditionalOrExpression
conditionalAndExpression
andExpression
equalityExpression
relationalExpression
additiveExpression
multiplicativeExpression
unaryExpression
unaryExpressionNotPlusMinus
postfixExpression
primary
literal
integerLiteral
booleanLiteral
</NonTerminals>
<Expression>
compilationUnit->typeDeclarations
typeDeclarations->typeDeclaration_typeDeclarations typeDeclaration
typeDeclaration->classModifiers CLASS ID classBody
classModifiers->classModifier_classModifiers classModifier
classModifier->PUBLIC
classBody->LEFTSCOPE classBodyDeclarations RIGHTSCOPE_LEFTSCOPE RIGHTSCOPE
classBodyDeclarations->classBodyDeclaration_classBodyDeclarations classBodyDeclaration
classBodyDeclaration->methodDeclaration
variableDeclarators->variableDeclarator_variableDeclarators COLON variableDeclarator
variableDeclarator->variableDeclaratorId_variableDeclaratorId ASSIGNMENT variableInitializer
variableDeclaratorId->ID
variableInitializer->expression
methodDeclaration->methodHeader methodBody
methodHeader->methodModifiers resultType methodDeclarator_resultType methodDeclarator
resultType->type_VOID
methodModifiers->methodModifier_methodModifiers methodModifier
methodModifier->PUBLIC_PROTECTED_PRIVATE_STATIC
methodDeclarator->ID LEFT formalParameterList RIGHT_ID LEFT RIGHT
formalParameterList->formalParameter_formalParameterList COLON formalParameter
formalParameter->type variableDeclaratorId
methodBody->block
type->numericType_BOOLEAN
numericType->integralType
integralType->INTEGER
block->LEFTSCOPE blockStatements RIGHTSCOPE_LEFTSCOPE RIGHTSCOPE
blockStatements->blockStatement_blockStatements blockStatement
blockStatement->localVariableDeclaration_statement
localVariableDeclaration->type variableDeclarators SEMICOLON
statement->statementWithoutTrailingSubstatement_ifThenStatement_whileStatement
statementWithoutTrailingSubstatement->block_emptyStatement_expressionStatement_breakStatement_continueStatement_returnStatement
emptyStatement->SEMICOLON
expressionStatement->statementExpression SEMICOLON
statementExpression->assignment
ifThenStatement->IF LEFT expression RIGHT statement
whileStatement->WHILE LEFT expression RIGHT statement
breakStatement->BREAK ID SEMICOLON_BREAK SEMICOLON
breakStatement->BREAK ID SEMICOLON_BREAK SEMICOLON
continueStatement->CONTINUE ID SEMICOLON_CONTINUE SEMICOLON
returnStatement->RETURN expression SEMICOLON_RETURN SEMICOLON
expression->assignmentExpression
assignmentExpression->assignment_conditionalExpression
assignment->leftHandSide assignmentOperator assignmentExpression
leftHandSide->expressionName
assignmentOperator->ASSIGNMENT
conditionalExpression->conditionalOrExpression
conditionalOrExpression->conditionalAndExpression_conditionalOrExpression OR conditionalAndExpression
conditionalAndExpression->andExpression_conditionalAndExpression AND andExpression
andExpression->equalityExpression
equalityExpression->relationalExpression_equalityExpression EQUAL relationalExpression
relationalExpression->additiveExpression
additiveExpression->multiplicativeExpression_additiveExpression PLUS multiplicativeExpression_additiveExpression MINUS multiplicativeExpression
multiplicativeExpression->unaryExpression_multiplicativeExpression MULTIPLE unaryExpression_multiplicativeExpression DIVIDE unaryExpression
unaryExpression->PLUS unaryExpression_MINUS unaryExpression_unaryExpressionNotPlusMinus
unaryExpressionNotPlusMinus->postfixExpression
postfixExpression->primary_expressionName
primary->literal_LEFT expression RIGHT
expressionName->ID
literal->integerLiteral_booleanLiteral
integerLiteral->NUM
booleanLiteral->TRUE_FALSE
</Expression>