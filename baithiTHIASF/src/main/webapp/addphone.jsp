<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Phone</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        form {
            margin-top: 10px;
        }

        label {
            font-size: 16px;
            width: 100px;
            display: flex;
            align-items: center;
            justify-content: flex-end;
            margin-right: 10px;
            margin-top: 8px;
            margin-bottom: 8px;
        }

        input {
            width: 250px;
            border: none;
            border-radius: 5px;
            padding: 8px;
            font-size: 16px;
            background-color: #f2f2f2;
            transition: box-shadow 0.3s ease;
        }

        input:focus {
            outline: none;
            box-shadow: 0 0 0 2px rgba(0, 123, 255, 0.4);
        }

        .save {
            font-weight: bold;
            width: 130px;
            padding: 10px;
            margin-top: 30px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .save:hover {
            background-color: #555;
        }

        table {
            border-collapse: collapse;
            width: 50%;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        tr {
            border: none;
        }

        .description {
            width: 100px;
            height: 60px;
        }

    </style>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>CodeLean Academy</h2>
    </div>
</div>

<div id="container">
    <h3>Add Phone</h3>
    <form action="PhoneServlet" method="POST">
        <input type="hidden" value="ADD" name="command">
        <table>
            <tbody>
            <tr>
                <td><label>Phone Name:</label></td>
                <td><input type="text" name="phoneName" required></td>
            </tr>
            <tr>
                <td><label>Brand</label></td>
                <td>
                    <select name="brand">
                        <option value="">Please choose a brand</option>
                        <option value="Apple">Apple</option>
                        <option value="Samsung">Samsung</option>
                        <option value="Nokia">Nokia</option>
                        <option value="Others">Others</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Price: </label></td>
                <td><input type="text" name="price" required></td>
            </tr>
            <tr>
                <td><label>Description: </label></td>
                <td><input type="text" name="description" class="description" required></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="save"></td>
            </tr>
            </tbody>
            <p>
                <input type="reset" value="Reset form">
            </p>
        </table>
    </form>
    <div style="clear: both"></div>
    <p>
        <a href="PhoneServlet">Back to List</a>
    </p>
</div>
</body>
</html>
