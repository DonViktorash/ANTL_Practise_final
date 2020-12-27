// Generated from D:/Git/ANTL_practise_1.0/src/main/resources\Expr.g4 by ANTLR 4.8
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link ExprParser}.
 */
public interface ExprListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link ExprParser#prule}.
	 * @param ctx the parse tree
	 */
	void enterPrule(ExprParser.PruleContext ctx);
	/**
	 * Exit a parse tree produced by {@link ExprParser#prule}.
	 * @param ctx the parse tree
	 */
	void exitPrule(ExprParser.PruleContext ctx);
}