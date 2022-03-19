
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Caderninho de gastos</title>
    <link rel="shortcut icon" type="imagex/png" href="banco.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css"  >

</head>
<body>
    <div class="container mt-3 p-3 border border-secondary rounded-3">
        <h1 class="text-center p-2">Cardeninho de gastos</h1>
    </div>
    <div class="container mt-3 p-3 border border-secondary rounded-3">
        <div class="row">
            <div class="col text-center" >
                <a href="#" class="link-secondary">
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-chevron-compact-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M9.224 1.553a.5.5 0 0 1 .223.67L6.56 8l2.888 5.776a.5.5 0 1 1-.894.448l-3-6a.5.5 0 0 1 0-.448l3-6a.5.5 0 0 1 .67-.223z"/>
                    </svg>
                </a>
            </div>
            <div class="col text-center p-1" >
                <h2 class="mb-0">Mês vigente</h2>
            </div>
            <div class="col text-center" >
                <a href="#" class="link-secondary">
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-chevron-compact-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 0 1 .671.223l3 6a.5.5 0 0 1 0 .448l-3 6a.5.5 0 1 1-.894-.448L9.44 8 6.553 2.224a.5.5 0 0 1 .223-.671z"/>
                    </svg>
                </a>
            </div>
        </div>
    </div>
    <div class="container mt-3 p-3 border border-secondary rounded-3">
        <button type="button" class="btn btn-outline-success mb-3" data-bs-toggle="modal" data-bs-target="#novaReceita">
            Nova Receita
        </button>
        <div class="modal" id="novaReceita"><%-- MODAL DE RECEITAS--%>
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Nova receita</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="row mb-3" >
                                <label class="col-sm-2 col-form-label" for="description" >Descrição</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text" name="description" id="description" required >
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label" for="value" >Valor</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="number" id="value" name="value" min="0.1" step="0.01" value="0.0" required >
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label" for="date" >Data</label>
                                <div class="col-sm-10">
                                    <input class="form-control"  name="date" id="date" type="date" required >
                                </div>
                            </div>
                            <fieldset class="row mb-3">
                                <legend class="col-form-label col-sm-2 pt-0">Repetir</legend>
                                <div class="col-sm-10">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="repeat" id="repeatYes" value="true">
                                        <label class="form-check-label" for="repeatYes">
                                            Sim
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="repeat" id="repeatNo" value="false" checked>
                                        <label class="form-check-label" for="repeatNo">
                                            Não
                                        </label>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="row mb-3 ">
                                <label class="col-sm-2 col-form-label" for="numberOftimes" hidden >Em </label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="number" id="numberOftimes" name="numberOftimes" min="2" max="24" step="1" value="0" hidden required disabled >
                                </div>
                            </div>
                            <button class="btn btn-primary" type="submit" id="salvarReceita" >Salvar receita</button>
                        </form>
                    </div>
                </div>
            </div>
        </div> <%-- FIM MODAL DE RCEITAS --%>

        <button type="button" class="btn btn-outline-warning mb-3 m" data-bs-toggle="modal" data-bs-target="#novaDespesa">
            Nova Despesa
        </button>
        <div class="modal" id="novaDespesa">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Nova receita</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        Modal body.. despesa
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div><%-- FIM MODAL DE DESPESAS --%>
<%--        Apagar daqui até  + --%>
        <input type="text" name="id" value="20" hidden >
        <div class="mb-3">
            <div class="row">
                <div class="col">
                    <div class="form-check border border-3 border-success rounded-3 p-0 mb-0 ">
                        <p class="text-center mt-4 mb-4 lead" >Receitas: R$ ${sumIncomes}</p>
                    </div>
                </div>
                <div class="col">
                    <div class="form-check border border-3 border-warning rounded-3 p-0 mb-0 ">
                        <p class="text-center mt-4 mb-4 lead" >Despesas: R$ ${sumExpenses}</p>
                    </div>
                </div>
                <div class="col">
                    <div class="form-check border border-3 border-danger rounded-3 p-0 mb-0 ">
                        <p class="text-center mt-4 mb-4 lead" >Saldo do mês: R$ ${sumIncomes - sumExpenses}</p>
                    </div>
                </div>
            </div>
        </div>
<%--        + aqui --%>
    </div>
    <div class="container mt-3 mb-3 p-3 border border-secondary rounded-3">
        <div class="row">
            <div class="col m-1 ps-3 pe-3 border-secondary border-end">
                <h3 class="text-center ">Receitas</h3>
                <table class="table table-success table-hover align-content-end" >
                    <thead>
                        <tr>
                            <th>Descricao</th>
                            <th>Data</th>
                            <th>Valor</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${incomesDTO}" var="income">
                        <tr>
                            <td>${ income.description }</td>
                            <td>${ income.createdAt }</td>
                            <td class = "text-md-end">${ income.value }</td>
                            <td><a>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                                    <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                                </svg>
                            </a></td>
                            <td><a>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                    <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                </svg>
                            </a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td>Total de receitas</td>
                            <td></td>
                            <td  class="text-md-end">${sumIncomes}</td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div class="col m-1 ps-3 pe-3 border-secondary borer-start">
                <h3 class="text-center" >Despesas</h3>
                <table class="table table-hover table-warning" >
                    <thead>
                        <tr>
                            <th>Descricao</th>
                            <th>Data</th>
                            <th>Valor</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${expensesDTO}" var="expense">
                        <tr>
                            <td>${expense.description}</td>
                            <td>${expense.createdAt}</td>
                            <td class= "text-md-end">${expense.value}</td>
                            <td><a>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                                    <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                                </svg>
                            </a></td>
                            <td><a>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                    <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                </svg>
                            </a></td>
                        </tr>
                    </c:forEach>

                    </tbody>
                    <tfoot>
                        <tr>
                            <td>Total de depesas</td>
                            <td></td>
                            <td class= "text-md-end">${sumExpenses}</td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tfoot>
                </table>

            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>